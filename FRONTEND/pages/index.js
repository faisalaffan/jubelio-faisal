import Head from "next/head";
import Image from "next/image";
import "bootstrap/dist/css/bootstrap.css";
import styles from "../styles/Home.module.css";
import { Button, Modal, Form } from "react-bootstrap";
import React, { useEffect, useState, ChangeEvent } from "react";
import axios from "axios";
var parse = require("html-react-parser");

export async function getStaticProps() {
  const res = await axios.get("http://localhost:3000/api/v1/product");
  console.log(res);
  const product = await res.data;

  return {
    props: {
      product,
    },
  };
}

export default function Home({ product }) {
  product = product.data;

  // PAYLOAD MODAL
  const [id, setId] = useState();
  const handleSetId = (e) => setId(e.target.value);
  const [name, setName] = useState();
  const handleSetName = (e) => setName(e.target.value);
  const [sku, setSku] = useState();
  const handleSetSku = (e) => setSku(e.target.value);
  const [productNo, setProductNo] = useState();
  const handleSetProductNo = (e) => setProductNo(e.target.value);
  const [desc, setDesc] = useState();
  const handleSetDesc = (e) => setDesc(e.target.value);

  // STATE MODAL
  const [showTambah, setShowTambah] = useState(false);
  const handleCloseTambah = () => setShowTambah(false);
  const handleShowTambah = () => setShowTambah(true);

  // STATE MODAL
  const [showUpdate, setShowUpdate] = useState(false);
  const handleCloseUpdate = () => setShowUpdate(false);
  const handleShowUpdate = (id) => {
    setShowUpdate(true);
    console.log(id)
    setId(id);
  };

  let handleTambah = () => {
    let payload = {
      name: name,
      sku: sku,
      product_no: productNo,
      desc: desc,
    };
    console.log(payload);
    axios
      .post("http://localhost:3000/api/v1/product", payload)
      .then((res) => {
        console.log(res);
        alert("success insert product");
        setId(null);
        setName(null);
        setSku(null);
        setProductNo(null);
        setDesc(null);
        window.location.reload();
      })
      .catch((err) => {
        console.log(err);
        alert("error insert product");
      });
  };

  let handleUpdate = () => {
    let payload = {
      name: name,
      sku: sku,
      product_no: productNo,
      desc: desc,
    };
    console.log(payload);
    axios
      .put("http://localhost:3000/api/v1/product/" + id, payload)
      .then((res) => {
        console.log(res);
        alert("success update product");
        setId(null);
        setName(null);
        setSku(null);
        setProductNo(null);
        setDesc(null);
        window.location.reload();
      })
      .catch((err) => {
        console.log(err);
        alert("error update product");
      });
  };

  let handleSyncProduct = () => {
    let payload = {
      name: name,
      sku: sku,
      product_no: productNo,
      desc: desc,
    };
    console.log(payload);
    axios
      .get("http://localhost:3000/api/v1/syncproduct")
      .then((res) => {
        console.log(res);
        alert("success sync product");
        setId(null);
        setName(null);
        setSku(null);
        setProductNo(null);
        setDesc(null);
        window.location.reload();
      })
      .catch((err) => {
        console.log(err);
        alert("error sync product");
      });
  };


  let cobak = () => {
    console.log(name);
  };

  return (
    <div className={styles.container}>
      <Head>
        <title>Product</title>
        <meta name="description" content="Generated by create next app" />
        <link rel="icon" href="/favicon.ico" />
      </Head>

      {/* MODAL TAMBAH */}
      <Modal show={showTambah} onHide={handleCloseTambah}>
        <Modal.Header closeButton>
          <Modal.Title>Modal heading</Modal.Title>
        </Modal.Header>
        <Modal.Body>
          <Form>
            <Form.Group className="mb-3">
              <Form.Label>Name</Form.Label>
              <Form.Control
                type="text"
                placeholder="Enter name"
                id="name"
                onChange={handleSetName}
              />
            </Form.Group>
            <Form.Group className="mb-3">
              <Form.Label>Sku</Form.Label>
              <Form.Control
                type="text"
                placeholder="Enter Sku"
                id="sku"
                onChange={handleSetSku}
              />
            </Form.Group>
            <Form.Group className="mb-3">
              <Form.Label>Product No</Form.Label>
              <Form.Control
                type="text"
                placeholder="Enter Product No"
                id="product_no"
                onChange={handleSetProductNo}
              />
            </Form.Group>
            <Form.Group className="mb-3">
              <Form.Label>Desc</Form.Label>
              <Form.Control
                type="text"
                placeholder="Enter Desc"
                id="desc"
                onChange={handleSetDesc}
              />
            </Form.Group>
          </Form>
        </Modal.Body>
        <Modal.Footer>
          <Button variant="secondary" onClick={handleCloseTambah}>
            Close
          </Button>
          <Button variant="primary" onClick={handleTambah}>
            Save
          </Button>
        </Modal.Footer>
      </Modal>

      {/* UPDATE */}
      <Modal show={showUpdate} onHide={handleCloseUpdate}>
        <Modal.Header closeButton>
          <Modal.Title>Modal heading</Modal.Title>
        </Modal.Header>
        <Modal.Body>
          <Form>
            <Form.Group className="mb-3">
              <Form.Label>Name</Form.Label>
              <Form.Control
                type="text"
                placeholder="Enter name"
                id="name"
                onChange={handleSetName}
              />
            </Form.Group>
            <Form.Group className="mb-3">
              <Form.Label>Sku</Form.Label>
              <Form.Control
                type="text"
                placeholder="Enter Sku"
                id="sku"
                onChange={handleSetSku}
              />
            </Form.Group>
            <Form.Group className="mb-3">
              <Form.Label>Product No</Form.Label>
              <Form.Control
                type="text"
                placeholder="Enter Product No"
                id="product_no"
                onChange={handleSetProductNo}
              />
            </Form.Group>
            <Form.Group className="mb-3">
              <Form.Label>Desc</Form.Label>
              <Form.Control
                type="text"
                placeholder="Enter Desc"
                id="desc"
                onChange={handleSetDesc}
              />
            </Form.Group>
          </Form>
        </Modal.Body>
        <Modal.Footer>
          <Button variant="secondary" onClick={handleCloseUpdate}>
            Close
          </Button>
          <Button variant="primary" onClick={handleUpdate}>
            Save
          </Button>
        </Modal.Footer>
      </Modal>

      <main>
        <div className="row">
          <div className="col-12 mt-5">
            <Button variant="primary" onClick={handleShowTambah} className="mx-2">
              Tambah Product
            </Button>
            <Button variant="primary" onClick={handleSyncProduct} className="mx-2">
              Sync Product
            </Button>
          </div>
          {product.map((item, i) => {
            return (
              <div className="col-3 mt-5" key={i}>
                <div className="card" style={{ width: "18rem" }}>
                  <div className="card-body">
                    <h5 className="card-title">{item.name}</h5>
                    <p
                      className="card-text"
                      style={{ height: "5rem", overflowY: "hidden" }}
                    >
                      {parse(item.desc)}
                    </p>
                    <a
                      href="#"
                      className="btn btn-primary"
                      onClick={() => handleShowUpdate(item.id_product)}
                    >
                      Edit
                    </a>
                  </div>
                </div>
              </div>
            );
          })}
        </div>
      </main>
    </div>
  );
}
