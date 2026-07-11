from app.app import app


def test_home_endpoint():
    app.config["TESTING"] = True
    client = app.test_client()

    response = client.get("/")

    assert response.status_code == 200
    assert response.get_json() == {
        "message": "Secure CI/CD pipeline deployed successfully",
        "status": "running",
    }