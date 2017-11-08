
## <a name="resource-user">User</a>

Stability: `prototype`

FIXME

### Attributes

| Name | Type | Description | Example |
| ------- | ------- | ------- | ------- |
| **created_at** | *date-time* | when user was created | `"2015-01-01T12:00:00Z"` |
| **id** | *uuid* | unique identifier of user | `"01234567-89ab-cdef-0123-456789abcdef"` |
| **name** | *string* | unique name of user | `"example"` |
| **updated_at** | *date-time* | when user was updated | `"2015-01-01T12:00:00Z"` |

### <a name="link-POST-user-/users">User Create</a>

Create a new user.

```
POST /users
```


#### Curl Example

```bash
$ curl -n -X POST /users \
  -d '{
}' \
  -H "Content-Type: application/json"
```


#### Response Example

```
HTTP/1.1 201 Created
```

```json
{
  "created_at": "2015-01-01T12:00:00Z",
  "id": "01234567-89ab-cdef-0123-456789abcdef",
  "name": "example",
  "updated_at": "2015-01-01T12:00:00Z"
}
```

### <a name="link-DELETE-user-/users/{(%23%2Fdefinitions%2Fuser%2Fdefinitions%2Fidentity)}">User Delete</a>

Delete an existing user.

```
DELETE /users/{user_id_or_name}
```


#### Curl Example

```bash
$ curl -n -X DELETE /users/$USER_ID_OR_NAME \
  -H "Content-Type: application/json"
```


#### Response Example

```
HTTP/1.1 200 OK
```

```json
{
  "created_at": "2015-01-01T12:00:00Z",
  "id": "01234567-89ab-cdef-0123-456789abcdef",
  "name": "example",
  "updated_at": "2015-01-01T12:00:00Z"
}
```

### <a name="link-GET-user-/users/{(%23%2Fdefinitions%2Fuser%2Fdefinitions%2Fidentity)}">User Info</a>

Info for existing user.

```
GET /users/{user_id_or_name}
```


#### Curl Example

```bash
$ curl -n /users/$USER_ID_OR_NAME
```


#### Response Example

```
HTTP/1.1 200 OK
```

```json
{
  "created_at": "2015-01-01T12:00:00Z",
  "id": "01234567-89ab-cdef-0123-456789abcdef",
  "name": "example",
  "updated_at": "2015-01-01T12:00:00Z"
}
```

### <a name="link-GET-user-/users">User List</a>

List existing users.

```
GET /users
```


#### Curl Example

```bash
$ curl -n /users
```


#### Response Example

```
HTTP/1.1 200 OK
```

```json
[
  {
    "created_at": "2015-01-01T12:00:00Z",
    "id": "01234567-89ab-cdef-0123-456789abcdef",
    "name": "example",
    "updated_at": "2015-01-01T12:00:00Z"
  }
]
```

### <a name="link-PATCH-user-/users/{(%23%2Fdefinitions%2Fuser%2Fdefinitions%2Fidentity)}">User Update</a>

Update an existing user.

```
PATCH /users/{user_id_or_name}
```


#### Curl Example

```bash
$ curl -n -X PATCH /users/$USER_ID_OR_NAME \
  -d '{
}' \
  -H "Content-Type: application/json"
```


#### Response Example

```
HTTP/1.1 200 OK
```

```json
{
  "created_at": "2015-01-01T12:00:00Z",
  "id": "01234567-89ab-cdef-0123-456789abcdef",
  "name": "example",
  "updated_at": "2015-01-01T12:00:00Z"
}
```


