INSERT INTO artemis_gateway.routes (route_id, uri, predicates, filters, enabled) VALUES
                                                                             ('member-management', 'lb:http://MEMBER-MANAGEMENT', '/api/v1/sapphire/mms/secured/member/**, /api/v1/sapphire/mms/secured/account/**', 'AuthenticationFilter', TRUE),
                                                                             ('member-management-public', 'lb:http://MEMBER-MANAGEMENT', '/api/v1/sapphire/mms/public/**', NULL, TRUE),
                                                                             ('premium-billing', 'lb:http://PREMIUM-BILLING', '/api/v1/sapphire/premium-billing/**', NULL, TRUE),
                                                                             ('auth-service', 'lb:http://AUTH-SERVICE', '/api/v1/sapphire/auth/**', NULL, TRUE);
