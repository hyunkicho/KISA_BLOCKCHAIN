# KISA_BLOCKCHAIN
KISA에서 진행한 블록체인 강의자료 입니다.

<온라인 강의>
https://youtu.be/QSqljl6CSLo?si=8o_uVkA1i6masrIo

- 이론 참고자료
- 
Ethereum docs
```
https://ethereum.org/en/developers/docs/
```

bitcoin docs
```
https://developer.bitcoin.org/devguide/
```



- 실습 참고자료
  
Remix IDE
```
https://remix.ethereum.org/#lang=en&optimize=false&runs=200&evmVersion=null&version=soljson-v0.8.26+commit.8a97fa7a.js
```

Chain list
```
https://chainlist.org/
```

faucet list

```
https://wallet.test.wemix.com/faucet
https://testnetfaucet.metadium.com/
```

hardhat docs
```
https://hardhat.org/docs
```


Dapp 띄우기 
```
## 먼저 contracts의 StroageEvent.sol을 remix에서 원하는 체인에 배포합니다.
## 이제 배포한 체인의 배포한 스토리지 컨트렉트를 사용해 볼 수 있습니다.
## node.js를 먼저 설치해야 합니다.
## simple_dapp의 view의 index.ejs에서 contract address 변경
## contract가 배포된 네트워크를 메타마스크에 연결해두기
cd ./simple_dapp
npm install ## 최초 1번 진행
npm run start ## 매번 실행시에 진행
## http://localhost:3000 접속 하면 자신이 배포한 컨트렉트에 상호작용이 가능합니다.
```
