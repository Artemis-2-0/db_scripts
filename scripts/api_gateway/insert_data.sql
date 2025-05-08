INSERT INTO artemis_gateway.routes
(id, route_id, uri, predicates, filters, enabled)
VALUES(1, 'account-management', 'lb:http://ACCOUNT-MANAGEMENT', '/api/v1/artemis/account/secured/**', 'AuthenticationFilter', true);
INSERT INTO artemis_gateway.routes
(id, route_id, uri, predicates, filters, enabled)
VALUES(2, 'account-management-public', 'lb:http://ACCOUNT-MANAGEMENT', '/api/v1/artemis/account/public/**', NULL, true);
INSERT INTO artemis_gateway.routes
(id, route_id, uri, predicates, filters, enabled)
VALUES(3, 'auth-service', 'lb:http://AUTH-SERVICE', '/api/v1/artemis/auth/**', NULL, true);
