//
//  NetworkManger.swift
//  Talabaty
//
//  Created by ihab saad on 13/04/2024.
//

import Foundation

final class NetworkManger {
    
    
//           MARK: -  Proprties
   private  var task: URLSessionDataTask? = nil
   private  var loger = LogerResponseAPI()
     
    func requestAPI<T: Codable>(type: T.Type ,endPoint: EndPoint ,completion: @escaping (ResponseAPI<T>) -> Void ) {
        
        
//           MARK: - EndPoint -
            guard let fullUrl = URLComponents(endPoint: endPoint).url else { return}
                  var request = URLRequest(url: fullUrl, timeoutInterval: ConstantValues.API.timeoutInterval)
                      request.httpMethod = endPoint.methods.rawValue
                      request.allHTTPHeaderFields = endPoint.headers
                      request.allHTTPHeaderFields = ["Content-Type": "application/json", "Accept":"application/json"]
               if let body = endPoint.body,
                      ![HttpMethod.get, HttpMethod.delete].contains(endPoint.methods){
                  let dic = (body as? Codable)?.asDictionary()
                      request.httpBody = try? JSONSerialization.data(withJSONObject: dic!)
        }
//          MARK: - request API -
            task = URLSession.shared.dataTask(with: request) { Data, reponsne, error in
        
//        MARK: - LogerResponseAPI
            self.Loger(task: self.task, respnse: reponsne, data: Data,
                  body: endPoint.body,
                       error: error)
        
            guard let Data else {
                  let error = ApiError(code: 0, message: "Error, No Data API 🔻")
                  return completion(.onMistake(error))
            }
            guard let reponsne = reponsne as? HTTPURLResponse else {
                  let error = ApiError(code: 0, message: "Error, No reponsne API 🔻")
                  return completion(.onMistake(error))
            }
            guard (200 ... 299).contains(reponsne.statusCode) else {
            guard let fail = try? JSONDecoder().decode(Fail.self, from: Data) else {
                  let error = ApiError(code: 0, message: "Error, No statusCode API 🔻")
                  return completion(.onMistake(error))
                   
                }
                
                DispatchQueue.main.async {                   /*NotificationBannerManger().shard.showAlart(subtitle:"\(reponsne.statusCode)\(String(describing: fail.message))")*/
          }
                return completion(.onMistake(.init(code: reponsne.statusCode, message: fail.message ?? "N/A : Nil message Error!")))
         }
            do {
                  let data = try JSONDecoder().decode(type, from: Data)
                  return completion(.onSucsess(data))
        } catch {
                  let error = ApiError(code: reponsne.statusCode, message: error.localizedDescription)
                  return completion(.onMistake(error))
            }
        }
        task?.resume()
    }
    
    
    func Loger(task: URLSessionDataTask?, respnse: URLResponse?, data: Data?, 
               body: Any?,
               error: Error?) {
         let url: String = task?.originalRequest?.url?.absoluteString ?? ""
         let headers: headersAPI = task?.originalRequest?.allHTTPHeaderFields ?? [:]
         let responseAPI: String = String(data: data ?? Data(), encoding: .utf8) ?? ""
        let statusCode =  (respnse as? HTTPURLResponse)?.statusCode
        loger.loger(url: url, stutesCode: statusCode ?? 0, headers: headers, error: error, response: responseAPI, body: body)
        
    }
}



