return (function(...)
	local N = {
		"\068\043\051\106\077\079\051\106\074\114\104\069\074\120\071\080",
		"\108\114\105\086",
		"\115\103\080\090\105\081\103\054\049\120\118\105\084\072\074\087\077\103\052\061",
		"\080\108\066\101\097\051\108\074",
		"\066\057\055\050\105\098\075\089",
		"\047\118\070\067\066\078\054\074\078\099\099\114",
		"\052\084\100\082\066\102\111\089\053\111\055\050\056\114\085\061",
		"\104\120\080\098\078\050\078\082\068\121\105\106\116\043\069\082\077\072\116\061",
		"\099\104\087\068\083\053\051\055\077\120\049\061",
		"\051\043\103\082\115\050\078\047\068\052\105\117\066\079\071\052",
		"\086\075\084\100\080\081\086\067\117\075\088\079\121\054\107\090\053\054\088\112\104\116\061\061",
		"\078\120\071\047\077\081\085\061",
		"\122\100\087\070\104\089\088\117",
		"\068\120\051\118\077\081\078\080",
		"\051\106\101\087\065\079\113\087\108\121\051\101\051\106\115\087\078\081\070\061",
		"\057\090\057\043\072\113\061\061",
		"\111\110\088\052\105\070\101\049\081\116\120\112\050\106\049\061",
		"\068\051\051\114\074\114\113\048\102\120\051\056\049\103\069\067\049\101\061\061",
		"\077\072\051\098",
		"\114\048\088\082\077\120\104\080\102\119\061\061",
		"",
		"\077\050\071\108\068\052\088\078\078\043\088\106\084\072\051\100\066\114\116\061",
		"\083\106\082\074",
		"\078\108\053\065",
		"\057\117\116\119\053\119\061\061",
		"\051\120\051\076\115\072\088\112\049\101\061\061",
		"\068\072\105\069\077\072\101\061",
		"\114\048\088\056\078\079\109\061",
		"\114\048\088\121\074\101\061\061",
		"\056\104\043\089\057\116\061\061",
		"\077\079\103\106\066\119\061\061",
		"\102\114\074\048\079\052\087\090\068\070\082\071\079\050\107\087\065\072\050\061",
		"\074\043\069\069\068\113\061\061",
		"\105\067\051\121\066\072\057\057\070\050\048\055\084\051\105\076\077\079\056\061",
		"\068\120\103\098\078\072\088\118",
		"\074\056\086\077\065\112\115\065\081\116\061\061",
		"\112\049\082\106\065\097\081\085",
		"\082\070\073\115\085\122\117\108\089\080\099\068\090\098\065\085",
		"\078\043\103\118\078\116\061\061",
		"\068\111\085\107\069\106\073\079\080\119\061\061",
		"\097\086\076\088\055\107\107\088\098\113\061\061",
		"\068\072\103\082\068\121\049\061",
		"\074\088\122\097\108\113\119\097\081\071\077\082\108\075\101\073\109\119\108\084\082\119\061\061",
		"\106\072\089\105\056\108\113\061",
		"\106\082\097\075\071\099\049\084\122\090\105\073\088\118\116\104",
		"\102\076\119\087\102\076\103\089\078\080\103\087\066\065\103\105\115\116\061\061",
		"\084\089\054\115\049\101\061\061",
		"\114\106\068\061",
		"\115\048\111\105\071\116\061\061",
		"\115\079\087\101\074\079\105\110",
		"\104\043\051\106\116\043\069\082\077\072\104\112\078\079\109\061",
		"\053\081\043\116\097\072\102\117",
		"\115\043\088\112\066\081\105\101\074\079\105\080",
		"\068\081\104\112\066\079\087\121",
		"\114\048\088\118\078\114\104\069\115\072\103\122\077\072\070\061",
		"\108\065\105\086\068\048\078\090\102\065\070\081\066\052\103\086\104\113\061\061",
		"\066\070\071\065\102\114\082\066\066\103\069\104\051\079\087\084\102\080\052\061",
		"\068\076\105\049\057\090\069\098\104\101\061\061",
		"\099\050\088\108\103\108\101\085",
		"\047\050\081\108\077\074\115\047\088\068\110\114\101\102\079\072",
		"\051\077\078\052\112\051\057\072",
		"\118\078\081\103\065\068\083\106\048\117\052\097\078\054\065\076",
		"\051\090\109\121\089\082\090\056\051\069\109\072",
		"\071\050\090\106\086\084\109\061",
		"\089\117\119\108\047\084\090\080\102\100\075\080\072\066\088\074\076\101\061\061",
		"\110\086\119\120\088\080\048\114",
		"\115\072\103\099\066\101\061\061",
		"\074\121\080\106\078\116\061\061",
		"\121\049\075\065\105\069\115\080\048\121\090\052\098\101\061\061",
		"\089\080\119\100\089\053\053\118\066\101\061\061",
		"\070\067\068\085\050\117\049\061",
		"\115\072\103\122\077\072\070\061",
		"\116\106\103\050\116\052\088\090\078\050\082\056\074\065\078\078\078\116\061\061",
	}
	for o, A in ipairs({ { 1, 73 }, { 1, 38 }, { 39, 73 } }) do
		while A[1] < A[2] do
			N[A[1]], N[A[2]], A[1], A[2] = N[A[2]], N[A[1]], A[1] + 1, A[2] - 1
		end
	end
	local function o(o)
		return N[o + 39235]
	end
	do
		local o = N
		local A = table.insert
		local T = math.floor
		local L = table.concat
		local E = string.char
		local K = string.len
		local e = type
		local O = {
			O = 22,
			T = 14,
			c = 51,
			A = 19,
			["\049"] = 12,
			g = 5,
			V = 1,
			["\050"] = 4,
			k = 60,
			t = 16,
			z = 34,
			Q = 55,
			F = 20,
			d = 10,
			Z = 7,
			e = 48,
			n = 43,
			J = 24,
			B = 26,
			["\057"] = 9,
			v = 45,
			o = 62,
			["\053"] = 58,
			N = 25,
			r = 23,
			["\052"] = 36,
			["\043"] = 54,
			P = 37,
			i = 13,
			["\048"] = 53,
			H = 6,
			u = 40,
			["\056"] = 44,
			l = 18,
			j = 52,
			h = 17,
			X = 61,
			I = 31,
			y = 39,
			C = 3,
			w = 0,
			Y = 15,
			m = 56,
			D = 28,
			q = 32,
			a = 11,
			M = 27,
			U = 8,
			b = 46,
			R = 41,
			s = 29,
			E = 33,
			f = 30,
			["\054"] = 42,
			L = 35,
			["\047"] = 47,
			S = 59,
			["\051"] = 21,
			x = 38,
			["\055"] = 2,
			p = 50,
			W = 57,
			G = 49,
			K = 63,
		}
		local z = string.sub
		for N = 1, #o, 1 do
			local s = o[N]
			if e(s) == "\115\116\114\105\110\103" then
				local e = K(s)
				local h = {}
				local k = 1
				local u = 0
				local D = 0
				while k <= e do
					local N = z(s, k, k)
					local o = O[N]
					if o then
						u = u + o * 64 ^ (3 - D)
						D = D + 1
						if D == 4 then
							D = 0
							local N = T(u / 65536)
							local o = T((u % 65536) / 256)
							local L = u % 256
							A(h, E(N, o, L))
							u = 0
						end
					elseif N == "\061" then
						A(h, E(T(u / 65536)))
						if k >= e or z(s, k + 1, k + 1) ~= "\061" then
							A(h, E(T((u % 65536) / 256)))
						end
						break
					end
					k = k + 1
				end
				o[N] = L(h)
			end
		end
	end
	return (function(N, T, L, E, K, e, O, A, k, a, U, h, D, B, s, z, x, v, u, Z)
		s, v, u, D, U, h, Z, B, A, z, x, a, k =
			{}, function(N, o)
				local T = u(o)
				local L = function(L, E, K)
					return A(N, { L, E, K }, o, T)
				end
				return L
			end, function(N)
				for o = 1, #N, 1 do
					s[N[o]] = 1 + s[N[o]]
				end
				if L then
					local A = L(true)
					local T = K(A)
					T[o(-39177)], T[o(-39168)], T[o(-39169)] = N, D, function()
						return -1003679
					end
					return A
				else
					return E({}, {
						[o(-39168)] = D,
						[o(-39177)] = N,
						[o(-39169)] = function()
							return -1003679
						end,
					})
				end
			end, function(N)
				local o, A = 1, N[1]
				while A do
					s[A], o = s[A] - 1, 1 + o
					if s[A] == 0 then
						s[A], z[A] = nil, nil
					end
					A = N[o]
				end
			end, function(N, o)
				local T = u(o)
				local L = function(L)
					return A(N, { L }, o, T)
				end
				return L
			end, function()
				k = k + 1
				s[k] = 1
				return k
			end, function(N, o)
				local T = u(o)
				local L = function(...)
					return A(N, { ... }, o, T)
				end
				return L
			end, function(N)
				s[N] = s[N] - 1
				if 0 == s[N] then
					s[N], z[N] = nil, nil
				end
			end, function(A, L, E, K)
				local c, l, s, g, R, S, q, O, u, y, J, m, k, F, X, b, D, V, d, r, P, Y, n, H, C, Q, w, Z, I, f, p
				while A do
					if A < 10517537 then
						if A < 5798696 then
							if A < 3483816 then
								if A < 1591206 then
									if A < 306471 then
										if A < 55047 then
											D = O
											A = not D
											A = A and 10806602 or 15993321
										else
											m = 10427424030383
											A = z[Z]
											J = o(-39192)
											f = z[E[2]]
											R = -1042240
											V = z[E[3]]
											X = m - R
											n = V(J, X)
											O = f[n]
											f = l
											A[O] = f
											A = 1603633
										end
									else
										if A < 1138021 then
											Z = 522288
											k = z[E[3]]
											D = 522320
											V = -351723
											X = 1021773
											J = -1021760
											Q = 932317
											n = 351725
											u = D - Z
											s = k % u
											D = z[E[4]]
											b = z[E[2]]
											f = V + n
											n = J + X
											m = z[E[3]]
											R = -932285
											X = m - s
											m = R + Q
											J = X / m
											X = 779448
											V = n - J
											H = f ^ V
											f = -917500
											l = b / H
											Z = D(l)
											l = -728951
											b = 4295696247
											J = 779704
											D = l + b
											b = -282793
											u = Z % D
											l = -282791
											Z = l - b
											V = 917501
											D = Z ^ s
											k = u / D
											D = z[E[4]]
											H = f + V
											n = -592818
											V = 890940
											b = k % H
											f = 4295858236
											H = f - V
											l = b * H
											Z = D(l)
											V = -592562
											D = z[E[4]]
											H = 608691
											f = -543155
											s = nil
											b = 73058
											l = D(k)
											u = Z + l
											l = 138594
											A = 13490076
											Z = l - b
											D = u % Z
											l = u - D
											b = H + f
											f = 1006207
											H = 1006463
											Z = l / b
											b = H - f
											l = D % b
											k = nil
											H = D - l
											u = nil
											f = V - n
											b = H / f
											D = nil
											V = 532400
											n = 532144
											f = V - n
											H = Z % f
											V = Z - H
											n = J - X
											Z = nil
											f = V / n
											V = { l, b, H, f }
											z[E[1]] = V
											l = nil
											b = nil
											H = nil
											f = nil
										else
											m = o(-39228)
											X = N[m]
											I = o(-39219)
											I = b[I]
											c = { I(b) }
											I = { X(T(c)) }
											R = I[2]
											m = I[1]
											Q = I[3]
											A = 3305573
										end
									end
								else
									if A < 2048580 then
										if A < 1704610 then
											f = o(-39203)
											R = 34462795562175
											O = N[f]
											V = z[E[2]]
											n = z[E[3]]
											X = o(-39223)
											Q = -160
											m = R - Q
											J = n(X, m)
											f = V[J]
											A = O[f]
											f = 0.05
											Q = 34824657355656
											R = 244520
											O = A(f)
											f = o(-39203)
											X = o(-39167)
											O = N[f]
											V = z[E[2]]
											n = z[E[3]]
											m = R + Q
											J = n(X, m)
											f = V[J]
											A = O[f]
											s = nil
											n = 0.15
											f = u or n
											V = A
											u = nil
											O = A(f)
											l = nil
											b = nil
											D = nil
											k = nil
											f = o(-39170)
											O = N[f]
											A = N[o(-39182)]
											V = v(14916040, { Z, E[2], E[3], H })
											H = B(H)
											f = O(V)
											Z = B(Z)
											O = {}
										else
											g = 6376073697111
											Y = -163877
											q = o(-39201)
											C = z[k]
											A = 14702017
											d = z[u]
											S = Y + g
											F = d(q, S)
											I = C[F]
											C = false
											c[I] = C
										end
									else
										if A < 3124406 then
											J = nil
											A = n
											V = nil
											Z = A
											A = 5258912
											n = nil
										else
											Q, c = m(R, Q)
											A = Q and 4504713 or 15784418
										end
									end
								end
							else
								if A < 5098225 then
									if A < 4427962 then
										if A < 4325565 then
											V = V + n
											H = V <= f
											X = not J
											H = X and H
											X = V >= f
											X = J and X
											H = X or H
											X = 16021993
											A = H and X
											H = 10632005
											A = A or H
										else
											q = 278761
											C = o(-39221)
											R = o(-39203)
											m = N[R]
											Q = z[k]
											F = 19513705957350
											c = z[u]
											d = F - q
											S = 5310890030798
											I = c(C, d)
											R = Q[I]
											X = m[R]
											R = 0.1
											Q = o(-39171)
											m = X(R)
											d = o(-39174)
											q = -893820
											R = N[Q]
											c = z[k]
											I = z[u]
											F = q + S
											C = I(d, F)
											F = 728823
											Q = c[C]
											c = 218727
											I = 218727
											m = R[Q]
											q = 20171928775275
											d = -541105
											Q = c - I
											I = 255277
											C = 255272
											c = I - C
											C = -541105
											I = C - d
											R = m(Q, c, I)
											C = o(-39210)
											m = 0.15
											X = J(H, R, m)
											Q = z[k]
											c = z[u]
											d = F + q
											I = c(C, d)
											R = Q[I]
											c = -823162
											Q = -823161
											m = H[R]
											R = Q - c
											X = m < R
											A = X and 9812780 or 9240858
										end
									else
										if A < 4612833 then
											P = o(-39207)
											Y = 30472648970613
											g = -204134
											C = z[k]
											X = Q
											d = z[u]
											A = 3305573
											S = Y - g
											p = -395308
											q = o(-39209)
											F = d(q, S)
											I = C[F]
											q = z[l]
											Y = z[k]
											r = 29475112973158
											g = z[u]
											w = p + r
											y = g(P, w)
											X = nil
											S = Y[y]
											F = q[S]
											p = 24317773109780
											y = o(-39186)
											S = z[k]
											Y = z[u]
											w = 97891
											P = w + p
											w = -750647
											g = Y(y, P)
											P = 20310445675948
											q = S[g]
											d = F[q]
											q = z[k]
											S = z[u]
											y = P - w
											g = o(-39204)
											Y = S(g, y)
											F = q[Y]
											C = d[F]
											c[I] = C
											c = nil
										else
											k = h()
											u = h()
											H = 632500
											O = nil
											A = nil
											z[k] = A
											D = o(-39166)
											b = o(-39216)
											Z = o(-39166)
											s = L
											z[u] = O
											O = N[D]
											R = -109475
											f = -59938
											D = o(-39185)
											A = O[D]
											D = h()
											z[D] = A
											O = N[Z]
											Z = o(-39162)
											A = O[Z]
											c = 858747
											l = o(-39198)
											O = N[l]
											l = o(-39183)
											Z = A
											A = O[l]
											l = A
											O = N[b]
											b = o(-39164)
											A = O[b]
											b = A
											J = 170341
											O = 632500
											Q = 88675
											A = O - H
											H = h()
											z[H] = A
											O = -59936
											A = O - f
											m = -109474
											f = h()
											n = h()
											z[f] = A
											A = {}
											V = A
											A = {}
											z[n] = A
											O = -170341
											A = O + J
											J = A
											O = m - R
											R = -88419
											A = {}
											m = R + Q
											R = m
											X = A
											Q = 858748
											m = Q - c
											A = 5580970
											Q = m
											m = 0
											c = Q < m
											m = O - Q
										end
									end
								else
									if A < 5753186 then
										if A < 5375236 then
											J = o(-39190)
											R = 11306847285531
											f = z[k]
											m = -821241
											c = 398508
											b = o(-39187)
											V = z[u]
											X = m + R
											m = o(-39205)
											b = Z[b]
											n = V(J, X)
											Q = 7759095607526
											H = f[n]
											b = b(Z, H)
											n = z[k]
											J = z[u]
											I = 406573
											C = 8821058440956
											R = Q - c
											X = J(m, R)
											c = 28870577888564
											f = o(-39187)
											V = n[X]
											f = Z[f]
											f = f(Z, V)
											R = o(-39234)
											J = z[k]
											X = z[u]
											Q = c - I
											m = X(R, Q)
											n = J[m]
											V = o(-39187)
											c = 9983956212787
											m = o(-39193)
											V = f[V]
											V = V(f, n)
											Q = -47073
											n = z[k]
											J = z[u]
											R = Q + c
											X = J(m, R)
											Q = 4818025712460
											f = n[X]
											H = V[f]
											d = 159461
											f = o(-39187)
											c = -886331
											m = o(-39200)
											n = z[k]
											J = z[u]
											R = Q - c
											X = J(m, R)
											J = o(-39187)
											J = Z[J]
											f = Z[f]
											V = n[X]
											f = f(Z, V)
											V = nil
											c = o(-39229)
											A = 14989770
											m = z[k]
											R = z[u]
											I = C - d
											Q = R(c, I)
											d = 6473786037967
											C = 983230
											X = m[Q]
											J = J(Z, X)
											m = z[k]
											R = z[u]
											I = C + d
											c = o(-39172)
											Q = R(c, I)
											X = m[Q]
											n = J[X]
											J = v(15335892, { l, k, u })
										else
											m = m + Q
											I = not c
											O = m <= R
											O = I and O
											I = m >= R
											I = c and I
											O = I or O
											I = 10158902
											A = O and I
											O = 15727072
											A = A or O
										end
									else
										A = {}
										f = -576691
										l = 16673
										z[E[2]] = A
										O = z[E[3]]
										D = O
										b = 35184372072159
										H = 576946
										Z = l + b
										O = k % Z
										z[E[4]] = O
										b = H + f
										f = -804729
										l = k % b
										n = -414061
										H = -804727
										b = H - f
										Z = l + b
										f = -376802
										z[E[5]] = Z
										H = o(-39216)
										b = N[H]
										H = o(-39178)
										l = b[H]
										b = l(s)
										H = 376812
										l = o(-39176)
										u[k] = l
										l = H + f
										V = -704629
										J = 414062
										f = 704630
										H = f + V
										V = n + J
										f = b
										A = 4248193
										n = V
										V = 0
										J = n < V
										V = H - n
									end
								end
							end
						else
							if A < 8880575 then
								if A < 6867996 then
									if A < 5937084 then
										if A < 5890600 then
											m = h()
											A = {}
											R = h()
											F = o(-39215)
											J = nil
											b = nil
											z[m] = A
											V = nil
											l = nil
											A = x(10989904, { m, H, f, D })
											X = nil
											c = {}
											z[R] = A
											Q = h()
											J = 19297877734827
											C = o(-39177)
											q = nil
											O = o(-39196)
											A = {}
											z[Q] = A
											A = N[O]
											Z = nil
											d = z[Q]
											D = B(D)
											I = { [C] = d, [F] = q }
											O = A(c, I)
											z[k] = O
											D = o(-39217)
											A = a(13444507, { Q, m, n, H, f, R })
											n = B(n)
											H = B(H)
											z[u] = A
											A = N[D]
											n = -749431
											Q = B(Q)
											R = B(R)
											l = z[k]
											m = B(m)
											m = 593650
											D = o(-39187)
											f = B(f)
											b = z[u]
											V = n + J
											f = o(-39230)
											D = A[D]
											H = b(f, V)
											Z = l[H]
											D = D(A, Z)
											A = nil
											H = o(-39231)
											J = o(-39212)
											b = N[H]
											R = 25887631068987
											f = z[k]
											V = z[u]
											Z = A
											X = m + R
											n = V(J, X)
											H = f[n]
											m = -256232
											l = b[H]
											H = z[k]
											f = z[u]
											X = 27153611651552
											J = X - m
											n = o(-39180)
											V = f(n, J)
											b = H[V]
											A = l[b]
											l = h()
											z[l] = A
											b = o(-39228)
											n = o(-39219)
											n = D[n]
											A = N[b]
											V = { n(D) }
											n = { A(T(V)) }
											f = n[3]
											A = 6981333
											b = n[1]
											H = n[2]
										else
											Z = z[E[1]]
											X = 6225746037091
											A = 18944
											b = z[E[2]]
											V = o(-39191)
											H = z[E[3]]
											J = -946877
											n = J + X
											f = H(V, n)
											l = b[f]
											D = Z[l]
											O = D
										end
									else
										if A < 6018023 then
											A = 4416647
										else
											D = -263026
											k = z[E[3]]
											Z = -263080
											u = D - Z
											D = 740152
											s = k * u
											u = -739895
											k = u + D
											O = s % k
											z[E[3]] = O
											A = 12480893
										end
									end
								else
									if A < 8281066 then
										if A < 8092484 then
											f, n = b(H, f)
											A = f and 13671330 or 5258912
										else
											Q = 605171
											O = #X
											R = -605171
											m = R + Q
											A = O == m
											A = A and 5801137 or 8939793
										end
									else
										O = {}
										A = N[o(-39163)]
									end
								end
							else
								if A < 9867216 then
									if A < 9613281 then
										if A < 9049352 then
											I = 179494
											m = 158502
											C = -179493
											R = 158501
											O = m - R
											m = #X
											A = Z(O, m)
											m = A
											A = l(X, m)
											R = A
											A = z[n]
											c = I + C
											Q = R - c
											O = b(Q)
											A[R] = O
											R = nil
											m = nil
											A = 8242428
										else
											C = o(-39181)
											R = o(-39203)
											m = N[R]
											F = 15425846512340
											Q = z[k]
											c = z[u]
											q = 709302
											A = 14989770
											d = F - q
											I = c(C, d)
											R = Q[I]
											X = m[R]
											m = X()
										end
									else
										if A < 9808720 then
											A = 11788136
										else
											A = 9240858
											m = z[k]
											d = 3150455173990
											C = -518128
											R = z[u]
											I = C + d
											c = o(-39225)
											Q = R(c, I)
											R = -744566
											X = m[Q]
											Q = -744567
											m = R - Q
											H[X] = m
										end
									end
								else
									if A < 10194142 then
										if A < 9984592 then
											f = z[H]
											l = not f
											O = l
											A = 13980075
										else
											I = m
											A = I
											X[I] = A
											I = nil
											A = 5580970
										end
									else
										Z = 698550
										D = 698631
										k = z[E[2]]
										u = D - Z
										s = k * u
										D = 22192772723209
										u = 564914
										k = u + D
										O = s + k
										k = 35184372033310
										u = -55522
										s = k - u
										A = O % s
										z[E[2]] = A
										D = -564913
										A = 6458565
										s = z[E[3]]
										u = 564914
										k = u + D
										O = s ~= k
									end
								end
							end
						end
					else
						if A < 13756528 then
							if A < 12768574 then
								if A < 11395104 then
									if A < 10870073 then
										if A < 10742198 then
											b = nil
											A = 11788136
											l = nil
											D = nil
										else
											O = {}
											A = N[o(-39194)]
										end
									else
										if A < 11022878 then
											k = -1001087
											u = 1001087
											s = z[E[1]]
											O = #s
											s = k + u
											A = O == s
											A = A and 10289466 or 13490076
										else
											I = o(-39195)
											I = c[I]
											d = z[k]
											S = o(-39188)
											F = z[u]
											X = Q
											y = -463662
											g = 13374935866746
											Y = g - y
											q = F(S, Y)
											C = d[q]
											I = I(c, C)
											A = I and 1925178 or 14702017
										end
									end
								else
									if A < 12383547 then
										if A < 11706959 then
											A = N[o(-39197)]
											O = {}
										else
											O = { k }
											A = N[o(-39213)]
										end
									else
										if A < 12479906 then
											A = 6981333
											J = nil
											n = nil
											V = nil
										else
											Z = -564913
											D = 564914
											k = z[E[3]]
											u = D + Z
											s = k ~= u
											A = s and 1124386 or 6458565
										end
									end
								end
							else
								if A < 13378090 then
									if A < 13066581 then
										if A < 13049655 then
											Q, c = m(R, Q)
											A = Q and 11024721 or 5938357
										else
											J = o(-39211)
											R = -253608
											A = z[Z]
											f = z[E[2]]
											m = 7808488586688
											V = z[E[3]]
											X = m - R
											n = V(J, X)
											O = f[n]
											f = l + k
											A[O] = f
											A = 1603633
										end
									else
										if A < 13076573 then
											d = 10881631102115
											m = z[k]
											c = o(-39232)
											R = z[u]
											C = 623347
											I = C + d
											Q = R(c, I)
											R = -377580
											X = m[Q]
											Q = 377581
											m = R + Q
											n[X] = m
											I = o(-39219)
											m = o(-39228)
											A = 13046670
											X = N[m]
											I = n[I]
											c = { I(n) }
											I = { X(T(c)) }
											Q = I[3]
											m = I[1]
											R = I[2]
										else
											O = z[E[1]]
											b = 32993
											k = z[E[2]]
											H = 11526970222862
											Z = o(-39184)
											u = z[E[3]]
											l = b + H
											D = u(Z, l)
											s = k[D]
											A = O[s]
											O = { A }
											A = N[o(-39224)]
										end
									end
								else
									if A < 13542948 then
										if A < 13452820 then
											A = z[E[1]]
											u = A
											s = L[1]
											k = L[2]
											A = u[k]
											A = A and 9777450 or 5798577
										else
											u = o(-39198)
											k = N[u]
											u = o(-39183)
											s = k[u]
											u = z[E[1]]
											k = { s(u) }
											O = { T(k) }
											A = N[o(-39175)]
										end
									else
										A = o(-39187)
										I = -1029760
										V = f
										C = 6344935099797
										Q = o(-39206)
										X = z[k]
										m = z[u]
										c = I + C
										d = 167845
										A = n[A]
										R = m(Q, c)
										I = o(-39226)
										F = 34296360332575
										J = X[R]
										A = A(n, J)
										J = A
										R = z[k]
										Q = z[u]
										C = d + F
										c = Q(I, C)
										m = R[c]
										X = J[m]
										m = z[l]
										A = X == m
										A = A and 2559054 or 12458876
									end
								end
							end
						else
							if A < 15354963 then
								if A < 14956759 then
									if A < 14425536 then
										if A < 14394076 then
											A = O and 8686345 or 15406039
										else
											O = {}
											A = N[o(-39179)]
										end
									else
										if A < 14898980 then
											X = nil
											c = nil
											A = 13046670
										else
											b = -13536
											D = o(-39233)
											l = 33207553049582
											A = z[E[1]]
											s = z[E[2]]
											k = z[E[3]]
											Z = l - b
											u = k(D, Z)
											O = s[u]
											s = z[E[4]]
											A[O] = s
											O = {}
											A = N[o(-39165)]
										end
									end
								else
									if A < 15269240 then
										if A < 14998965 then
											F = -1005247
											C = o(-39199)
											R = o(-39222)
											m = N[R]
											Q = z[k]
											c = z[u]
											q = 4801920985143
											d = F + q
											I = c(C, d)
											R = Q[I]
											X = m[R]
											A = X and 1507886 or 16240112
										else
											D = z[E[1]]
											O = D
											A = D and 5931701 or 18944
										end
									else
										s = L[1]
										k = L[2]
										u = L[3]
										A = not s
										A = A and 14406584 or 15178192
									end
								end
							else
								if A < 16019844 then
									if A < 15731009 then
										if A < 15691380 then
											m = 13892494952659
											n = o(-39218)
											l = z[E[2]]
											X = 731575
											f = z[E[3]]
											J = X + m
											V = f(n, J)
											O = l[V]
											A = s[O]
											l = A
											A = k and 13051279 or 203782
										else
											Q = 605171
											O = #X
											R = -605171
											m = R + Q
											A = O == m
											A = 8939793
										end
									else
										if A < 15882950 then
											Q = o(-39171)
											R = N[Q]
											S = 29045602570885
											d = o(-39173)
											c = z[k]
											q = 169765
											I = z[u]
											F = q + S
											C = I(d, F)
											I = -5984
											Q = c[C]
											c = -5984
											m = R[Q]
											C = -270504
											Q = c - I
											I = -270499
											d = -447086
											q = 4361671555236
											c = I - C
											C = 447086
											I = C + d
											C = o(-39208)
											F = 841530
											R = m(Q, c, I)
											m = 0.15
											X = J(n, R, m)
											Q = z[k]
											c = z[u]
											d = F + q
											I = c(C, d)
											R = Q[I]
											Q = -456621
											m = n[R]
											c = -456622
											R = Q - c
											X = m < R
											A = X and 13071247 or 4416647
										else
											Z = z[E[2]]
											A = o(-39189)
											V = -167781
											H = o(-39227)
											l = z[E[3]]
											n = 16522169830272
											f = V + n
											b = l(H, f)
											O = Z[b]
											Z = h()
											A = D[A]
											A = A(D, O)
											z[Z] = A
											O = z[Z]
											A = not O
											A = A and 11516768 or 16402933
										end
									end
								else
									if A < 16354704 then
										if A < 16072804 then
											H = V
											I = o(-39216)
											A = 4248193
											c = N[I]
											I = o(-39202)
											d = 242344
											Q = c[I]
											c = Q(s, H)
											C = 242345
											Q = z[E[6]]
											I = Q()
											R = c + I
											m = R + l
											Q = 58850
											c = -58594
											R = Q + c
											X = m % R
											R = u[k]
											l = X
											H = nil
											I = C - d
											c = l + I
											Q = D[c]
											m = R .. Q
											u[k] = m
										else
											D = nil
											A = N[o(-39214)]
											n = nil
											u = B(u)
											f = nil
											V = nil
											Z = nil
											k = B(k)
											l = B(l)
											b = nil
											H = nil
											J = nil
											O = {}
										end
									else
										O = o(-39170)
										b = U(13088144, { Z, E[2], E[3] })
										A = N[O]
										H = { A(b) }
										l = H[2]
										O = H[1]
										b = O
										H = h()
										z[H] = l
										l = not b
										A = l and 13980075 or 9954096
										O = l
									end
								end
							end
						end
					end
				end
				A = #K
				return T(O)
			end, {}, function(N, o)
				local T = u(o)
				local L = function(L, E, K, e, O)
					return A(N, { L, E, K, e, O }, o, T)
				end
				return L
			end, function(N, o)
				local T = u(o)
				local L = function(L, E, K, e)
					return A(N, { L, E, K, e }, o, T)
				end
				return L
			end, 0
		return (Z(4617357, {}))(T(O))
	end)(
		getfenv and getfenv() or _ENV,
		unpack or table[o(-39220)],
		newproxy,
		setmetatable,
		getmetatable,
		select,
		{ ... }
	)
end)(...)
