
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

import "./ERC721.sol";
//import "@chainlink/contracts/src/v0.8/ChainlinkClient.sol";
import "./Strings.sol";
import "@chainlink/contracts/src/v0.6/ChainlinkClient.sol";
import "@chainlink/contracts/src/v0.6/Oracle.sol";


//contract _POP is ChainlinkClient, ERC721 {
contract _POP is ERC721 {
    using Strings for uint256;

    struct NFTData {
        string name;
        string description;
        string geolocation;
        string urlImage;
    }

///////////////////////////////////////////////////////////////////////////////
//                                  STORAGE                               //
///////////////////////////////////////////////////////////////////////////////

    mapping(uint256 => NFTData) public nftData;

    string public baseURI;
    //string public photoId;
    // The Graph subgraph endpoint
    string private graphEndpoint = "https://api.thegraph.com/subgraphs/name/your-subgraph-endpoint";
    address oracle;
    uint256 jobId;
    uint256 fee;
    //string folder_cid = "QmR2RKTQ6MvhsbqaD4Y3yciDdnP1PMTGZDvqHNiZhFvM11"; //Reemplaza "tu_CID_de_carpeta" con el CID de la carpeta real
    //string photo_id = "FutureGarden_1.jpg"; //Reemplaza "tu_ID_de_foto" con la ID de foto real
    

///////////////////////////////////////////////////////////////////////////////
//                                  ERRORS                             //
///////////////////////////////////////////////////////////////////////////////


///////////////////////////////////////////////////////////////////////////////
//                                 COSTRUCTOR                                //
///////////////////////////////////////////////////////////////////////////////
    constructor() ERC721 ("tokenPOP", "POP"){
        //setPublicChainlinkToken();
        //oracle = "direccion_del_oraculo"; // Reemplaza con la dirección del oraculo
        //jobId = "identificador_del_trabajo"; // Reemplaza con el identificador del trabajo
        fee = 0.1 * 10 ** 18; // 0.1 LINK
    }

///////////////////////////////////////////////////////////////////////////////
//                                 MODIFIERS                                 //
///////////////////////////////////////////////////////////////////////////////

    
///////////////////////////////////////////////////////////////////////////////
//                             USER-FACING FUNCTIONS                         //
///////////////////////////////////////////////////////////////////////////////

    function mint(address to, uint256 tokenId) external{
        _mint (to, tokenId);
    }
///////////////////////////////////////////////////////////////////////////////
//                               ADMIN FUNCTIONS                             //
///////////////////////////////////////////////////////////////////////////////
    function setBaseURI(string memory _baseURI) external {
        baseURI = _baseURI;
    }

    function tokenURI (uint256 id) public view override returns(string memory){
        return bytes(baseURI).length > 0 ? string(abi.encodePacked(baseURI, id.toString(), ".json")) :"";
    }
    //cid QmNcDBFgqyfrrYkWKxFgbJtNt6WkouHDasEfh7TEP96gzK carpeta-json

    /*function setPhotoId(string memory _photoId) external {
        photoId = _photoId;
    }

    function getPhotoId() external view returns (string memory) {
        return photoId;
    }*/

    //posible json
    /*
    {
  "nombre": "Nombre del archivo",
  "descripcion": "Descripción del archivo",
  "geolocalizacion": {
    "latitud": 40.7128,
    "longitud": -74.0060
  },
  "url": "https://black-ashamed-dove-888.mypinata.cloud/ipfs/QmR2RKTQ6MvhsbqaD4Y3yciDdnP1PMTGZDvqHNiZhFvM11/1.jpg"
}
    */

    //direccion real operativa fotos https://black-ashamed-dove-888.mypinata.cloud/ipfs/QmR2RKTQ6MvhsbqaD4Y3yciDdnP1PMTGZDvqHNiZhFvM11/FutureGarden_1.jpg/
   /*
    function requestJson(string memory folderCid, string memory photoId) public returns (bytes32 requestId) {
        //conseguir el jobid y address del oracle
        Chainlink.Request memory request = buildChainlinkRequest(jobId, address(this), this.fulfill.selector);
        string memory ipfsUrl = string(abi.encodePacked("https://black-ashamed-dove-888.mypinata.cloud/ipfs/", folderCid, "/", photoId));
        request.add("get", ipfsUrl);
        return sendChainlinkRequestTo(oracle, request, fee);
    }

    //function fulfill(bytes32 requestId, bytes memory data) public recordChainlinkFulfillment(requestId) {
    function fulfill(bytes32 requestId, Chainlink.Request memory request) public recordChainlinkFulfillment(requestId) {
        // Convertir los datos en formato JSON a un objeto
        string memory jsonData = string(data);
        bytes32 name;
        bytes32 description;
        bytes32 geolocation;
        bytes32 url;

        // Extraer los datos individuales del JSON
        (name, description, geolocation, url) = abi.decode((bytes(jsonData)), (bytes32, bytes32, bytes32, bytes32));

        // Devolver los datos por separado
        return (nombre, direccion, geolocalizacion, url);
    }*/

   /* function fulfill(bytes32 _requestId, bytes memory data) public recordChainlinkFulfillment(_requestId) {
        uint256 tokenId = uint256(_requestId);

        // Convert bytes32 response to string
        string memory name = bytes32ToString(_name);
        string memory description = bytes32ToString(_description);
        string memory geolocation = bytes32ToString(_geolocation);
        string memory image = bytes32ToString(_urlImage);

        // Store the retrieved data in the mapping
        nftData[tokenId].name = name;
        nftData[tokenId].description = description;
        nftData[tokenId].geolocation = geolocation;
        nftData[tokenId].urlImagen = _urlImage;
    }*/
    /*function tokenUri(uint256 id) public view override returns (string memory){
        //return bytes(baseURI).length > o ? string(abi.encodePacked);
        //string memory tokenURI = string(abi.encodePacked("https://example.com/nft/", name, "/", description, "/", geolocation, "/", url));

    }*/
   

    /*function mint(address recipient, string memory tokenURI) public returns (uint256) {
        _tokenIds.increment();
        uint256 newItemId = _tokenIds.current();
        _mint(recipient, newItemId);
        _setTokenURI(newItemId, tokenURI);
        return newItemId;
}*/




}