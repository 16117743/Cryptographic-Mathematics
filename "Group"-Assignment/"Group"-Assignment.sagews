︠f7b38226-a70b-4faa-bdd3-159b64ff4bea︠
#Cryptographic Math Case Study Assignment 1
#Group 2: Thomas Flynn, Swarna Pundir, Dongao Li, Ajit Francis Joy
alphabet='0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz ,.?!:;-\'\"'
def string2number(string):
    M=0
    for i in range(len(string)):
        M = 100*M + alphabet.index(string[i])
    return M
def number2string(M):
    string=''
    while M > 0:
        i = M % 100
        M = (M-i)/100
        string = alphabet[i] + string
    return string

print string2number("That's it!")
print number2string(1653505651620263621653505651620164)

︡5cfc6f1b-7042-48d3-af3e-7f6423d3c2c0︡{"stdout":"29433655705462445566\n"}︡{"stdout":"Group 2, Group 1.\n"}︡{"done":true}︡
︠0ca704cb-0c47-4ea8-8d1b-c4f5111ca42c︠
# encrypted msg, b = c
c=135947603969973198474580341810806349012290898993956412057457

#public keys (m,k):
#public base
m=321647365946069978250863146810014884211483126667719403184357

#public exponent, e = k
e=1646316852943690915451617869693219198682104886084816580789

print 'm_phi =', euler_phi(m)
︡ffdf3974-df25-4ed7-8e39-517e95e8372f︡
︠841e2d7b-17ab-48af-9346-cbbef5fd5044︠
#step 1 find p and q
print factor(321647365946069978250863146810014884211483126667719403184357)
︡3c396bb8-f0a2-480f-9d6d-34e93a08f051︡{"stdout":"411597394993446362243723984941 * 781461131334884642373019917977"}︡{"stdout":"\n"}︡{"done":true}︡
︠f890545e-112c-45a5-b24f-25f512ca7a17︠
#step 2 find phi of n
p = 411597394993446362243723984941
q = 781461131334884642373019917977
p_minus1 = 411597394993446362243723984940
q_minus1 = 781461131334884642373019917976
# m
m_phi = p_minus1 * q_minus1
e=1646316852943690915451617869693219198682104886084816580789
#step 3 make sure e and n_phi are co prime
print gcd(m_phi,e )
︡3036b133-a61d-4b17-b093-7b100b47fc49︡{"stdout":"1\n"}︡{"done":true}︡
︠94efd301-6d37-430f-9268-8a0837f0b3e5︠
# step 4 calculate d
m_phi = 321647365946069978250863146808821825685154795663102659281440

# e = k
e=1646316852943690915451617869693219198682104886084816580789

#phi of m
m_phi = 321647365946069978250863146808821825685154795663102659281440

# e = k
e=1646316852943690915451617869693219198682104886084816580789

#get the inverse mod of the encryption exponent and the phi of m
d=inverse_mod(e,m_phi)

print 'd = ', d
︡37f7ed59-e95c-43dc-91bd-bf77362f390a︡{"stdout":"1\n"}︡{"done":true}︡
︠9d3c6cf4-b80b-478f-b4c3-c1dbc476c473︠
#step 5 decrypt ciphertext with decryption exponent

#ciphertext
c= 205328209559349821185708110267487005932607283213639243526693

#base
m=321647365946069978250863146810014884211483126667719403184357

#encryption exponent, remember e = k
e=1646316852943690915451617869693219198682104886084816580789

#decryption exponent
d = 208822466757644895448341460271136881467567453411069008749789

# to encrypt is plaintext^e mod m
    # encrypt = pow(pt,e,m)
    
# to decrypt is ciphertext^d mod m
decrypted = pow(c,d,m)
    
print decrypted

︡e2ef70e7-dad6-4221-a685-af9dfc68aa05︡{"stdout":"1653505651620263621653505651620164\n"}︡{"done":true}︡
︠ff894dc9-bfd9-441f-b626-19acb9123b48s︠
#step 6 convert decrypted number to string
decrypted_num = 1653505651620263621653505651620164

alphabet='0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz ,.?!:;-\'\"'

def string2number(string):
    M=0
    for i in range(len(string)):
        M = 100*M + alphabet.index(string[i])
    return M

def number2string(M):
    string=''
    while M > 0:
        i = M % 100
        M = (M-i)/100
        string = alphabet[i] + string
    return string

decrypted_msg = number2string(decrypted_num)
print number2string(decrypted_num)
print string2number(decrypted_msg)

︡95c181d5-1b0a-48f8-979b-1307aba838b1︡{"stdout":"Group 2, Group 1.\n"}︡{"stdout":"1653505651620263621653505651620164\n"}︡{"done":true}︡
︠2b527e89-b3e6-4c0b-9b22-4c35634447bas︠

#Cryptographic Math Case Study Assignment 2
#Group 2: Thomas Flynn, Swarna Pundir, Dongao Li, Ajit Francis Joy

#Section A: written by Ajit Francis and Thomas Flynn
#Step 1: choose 2 random primes with at least 100 digits
#chosen from https://primes.utm.edu/lists/small/small.html#100
p = 5202642720986189087034837832337828472969800910926501361967872059486045713145450116712488685004691423
q = 2908511952812557872434704820397229928450530253990158990550731991011846571635621025786879881561814989

print 'p = ', p
print 'q = ', q
︡ffcca14a-f110-452d-981b-f3a52f0a3f52︡{"stdout":"p =  5202642720986189087034837832337828472969800910926501361967872059486045713145450116712488685004691423\n"}︡{"stdout":"q =  2908511952812557872434704820397229928450530253990158990550731991011846571635621025786879881561814989\n"}︡{"done":true}︡
︠f124c381-21cc-469b-af46-6c7de2603d73s︠
#Section B: written by Dongao Li and Thomas Flynn
#Step 2: verify digit length of random primes
print len(str(p))
print len(str(q))
︡9993a92a-af0b-4eee-aa04-15d9638a71bd︡{"stdout":"100\n"}︡{"stdout":"100\n"}︡{"done":true}︡
︠9b1587e7-7f2e-4e02-8203-bdb15195bd9as︠
#Section C: written by Ajit Francis Joy and Thomas Flynn
#Step 3: verify that the difference of these 2 prime numbers is a number with at least 100 digits
difference = p-q
print 'difference of private keys is = ' , len(str(difference)), " digits"

︡8e379fb7-7655-43b8-ac7d-d2a9828536e1︡{"stdout":"difference of private keys is =  100  digits\n"}︡{"done":true}︡
︠a7667bd4-2817-43be-b44c-d9aa95f51e8bs︠
#Section D: written by Swarna Pundir and Thomas Flynn
#Step 4: create public key
m = p*q
print 'public key = ', m
︡f88b6c49-8cf5-4308-aea5-fd279616ec96︡{"stdout":"public key =  15131948540201580486975235491304253779644553013766367468133820549558605002104786469223340957375145821402077578428603287109028368750822016215428683711977714168191635053712045487182193100495839761139347\n"}︡{"done":true}︡
︠528574b7-ec3c-4e25-bd5c-f7dae49e8b9fs︠
#Section E: written by Dongao Li and Thomas Flynn
#Step 5: calculate phi of public key m
phi_m = (p-1)*(q-1)
print 'phi of public key =' , phi_m
︡9efa64be-6124-4fa4-afac-f78fc41b564f︡{"stdout":"phi of public key = 15131948540201580486975235491304253779644553013766367468133820549558605002104786469223340957375145813290922904629856327639485716015763614795097518795317361649587584555819760706111050601127273194632936\n"}︡{"done":true}︡
︠ce7d77cb-4571-4815-a9e3-fd06d939a6b6s︠
#Section F: written by Ajit Francis Joy and Thomas Flynn
#Step 6: find suitable encryption exponent
phi_m=15131948540201580486975235491304253779644553013766367468133820549558605002104786469223340957375145813290922904629856327639485716015763614795097518795317361649587584555819760706111050601127273194632936

#if encryption exponent and the phi of m are 'coprime'
for k in range (943219876543210,943219876553210):
    if gcd(k,phi_m) ==1:
        print k
        break
︡9da04898-b602-463b-b9b8-1ae5a1ba9e47︡{"stdout":"943219876543211\n"}︡{"done":true}︡
︠8143024b-a05f-4f99-b695-e1a8ff88cc29s︠
#Section G: written by Swarna Pundir and Thomas Flynn
#Step 7: use encryption exponent and phi of m to get a decryption exponent
phi_m=15131948540201580486975235491304253779644553013766367468133820549558605002104786469223340957375145813290922904629856327639485716015763614795097518795317361649587584555819760706111050601127273194632936
k = 943219876543211

#calculate the inverse mod of encryption exponent and the phi of public key m
d = inverse_mod(k,phi_m)

print 'decryption exponent =', d
︡28ac4374-0f2a-4669-880a-e8dfec8774cb︡{"stdout":"decryption exponent = 6388131074330244206576736916900172294627959696380895021589524641456548898719643381471012229338045954234272736125252519901843417843552294352564114313689837369704118202418723693433944469666522230826403\n"}︡{"done":true}︡
︠f46ba685-0f55-409a-991e-227958891713︠

#Section H: written by Thomas Flynn, Swarna Pundir, Dongao Li, and Ajit Francis Joy
#Step 8: publish public keys

#product of private keys p and q
m = 15131948540201580486975235491304253779644553013766367468133820549558605002104786469223340957375145821402077578428603287109028368750822016215428683711977714168191635053712045487182193100495839761139347

#encryption exponent
k = 943219876543301
︡441324cc-20a6-4514-ad47-c4d684475782︡
︠b3cf8edd-3caf-4ea7-82fb-9a0c987664fb︠

︡b0a074dd-adcf-40db-82a1-7c8b86d6a7ec︡
︠56e93bef-6d46-4109-8198-76c34c84efeds︠

#Cryptographic Math Case Study Assignment 3 & 4:
#Group 2: Thomas Flynn, Swarna Pundir, Dongao Li, Ajit Francis Joy

#Section A: written by Thomas Flynn
#Step 1: test encryption
d = 12707135939724166096759378815242977947902924710831242016221327103941841844658657777089311471657891622310864726538477957654395868363955308048886162766037082474166021359316634143071319871998868490188661

k = 943219876543301

mm = 15131948540201580486975235491304253779644553013766367468133820549558605002104786469223340957375145821402077578428603287109028368750822016215428683711977714168191635053712045487182193100495839761139347

alphabet='0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz ,.?!:;-\'\"'
def string2number(string):
    M=0
    for i in range(len(string)):
        M = 100*M + alphabet.index(string[i])
    return M
def number2string(M):
    string=''
    while M > 0:
        i = M % 100
        M = (M-i)/100
        string = alphabet[i] + string
    return string

#part 1 of message to encrypt
msg1 = "Save me from drowning in the sea. Beat me up on the beach."
print 'plaintext part 1 = "', msg1, '"'

#part 2 of message to encrypt
msg2 = "What a lovely holiday, there's nothing funny left to say."
print 'plaintext part 2 = "', msg2, '"'

#convert plaintext string to number
pt1 = string2number(msg1)
pt2 = string2number(msg2)

#print plaintext1 as number
print 'plaintext part 1 as numbers = ', pt1
print 'plaintext part 2 as numbers = ', pt2

#test encryption
ct1 = pow(pt1,k,mm)
ct2 = pow(pt2,k,mm)

#print ciphertext as numbers
print 'ciphertext part 1 as numbers = ', ct1
print 'ciphertext part 2 as numbers =', ct2
︡2a517cce-0938-42a4-958e-3110c5f7e675︡{"stdout":"plaintext part 1 = \" Save me from drowning in the sea. Beat me up on the beach. \"\n"}︡{"stdout":"plaintext part 2 = \" What a lovely holiday, there's nothing funny left to say. \"\n"}︡{"stdout":"plaintext part 1 as numbers =  28365740624840624153504862395350584944494262444962554340625440366462114036556248406256516250496255434062374036384364\n"}︡{"stdout":"plaintext part 2 as numbers =  324336556236624750574047606243504744393660636255434053407054624950554344494262415649496062474041556255506254366064\n"}︡{"stdout":"ciphertext part 1 as numbers =  7438117548631984724962306403761196029172706647197212457292861505649473239381693916153117988542080961029112027906280265502246911285539598065715548813146384657764346152289264834322221434533318669925248\n"}︡{"stdout":"ciphertext part 2 as numbers = 534223788564900588224341744928209637099400897088370678195056552083203556370423919794578100431466075001899007955904717023825836993411025473253998316031902023234263286283678296284320982490762316747313\n"}︡{"done":true}︡
︠d37fbf1b-edd5-4762-91b7-d31c2d543e50s︠
#Section B: written by Thomas Flynn, Swarna Pundir, Dongao Li, and Ajit Francis Joy
#Step 2: decrypt ciphertext number to plaintext number

#received encrypted messages
ct1=4530755979503752277682103740042986942608207984495624263856461323659384604287465852811340046932543258268913920705264409669449208378008050053224081379523112223839118454546650148535944802227994109154785
ct2=6222258760304000429249503357928086019810927625648607968807158892262066728885767061793378787517770945927026962389266891624542263344764401960094876686802330820971302232598672953808063896042749815997151
ct3=8711670743943426812161064401700995985753722318527183416655210929355335454018206099570012056313227349429108336295340233577100232566003160652677880090864970390551069976549995377328503342045890826756072
ct4=3000572432309054244635388583105603222711922009992389435460030583707394733052087681129355747156813254425522190455918663466931998133890181255535183913525754005336507758997728645584967574382812651732260

#decryption exponent
d = 12707135939724166096759378815242977947902924710831242016221327103941841844658657777089311471657891622310864726538477957654395868363955308048886162766037082474166021359316634143071319871998868490188661
#public key = product of our 2 private keys
m = 15131948540201580486975235491304253779644553013766367468133820549558605002104786469223340957375145821402077578428603287109028368750822016215428683711977714168191635053712045487182193100495839761139347

#decrypt ciphertext 1 and 2
test_decryption1 = pow(ct1,d,m)
test_decryption2 = pow(ct2,d,m)
test_decryption3 = pow(ct3,d,m)
test_decryption4 = pow(ct4,d,m)

#print plaintext 1 and 2 as numbers
print 'plaintext part 1 as numbers = ', test_decryption1
print 'plaintext part 2 as numbers = ', test_decryption2
#print plaintext 1 and 2 as numbers
print 'plaintext part 3 as numbers = ', test_decryption3
print 'plaintext part 4 as numbers = ', test_decryption4
︡3bde579e-b78a-4b1e-9a3e-b11127d3235d︡{"stdout":"plaintext part 1 as numbers =  294350566236535562554340625356474053625041625543406248444939546250416236\n"}︡{"stdout":"plaintext part 2 as numbers =  474762514050514740636213445451404954405362504162184939443670\n"}︡{"stdout":"plaintext part 3 as numbers =  54623940545544496064622943606249364840625350565440546255434062434036535554625041\n"}︡{"stdout":"plaintext part 4 as numbers =  62554340622556494536376362284449396362165645365336556362364939622236533655433664\n"}︡{"done":true}︡
︠777835f3-9680-4d46-9c23-9855fb98c5b4s︠
alphabet='0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz ,.?!:;-\'\"'

def number2string(M):
    string=''
    while M > 0:
        i = M % 100
        M = (M-i)/100
        string = alphabet[i] + string
    return string

#Section C: written by Thomas Flynn, Swarna Pundir, Dongao Li, and Ajit Francis Joy
#Step 3: convert decrypted number to string
plaintext1 = 294350566236535562554340625356474053625041625543406248444939546250416236
plaintext2 =  474762514050514740636213445451404954405362504162184939443670
plaintext3 =  54623940545544496064622943606249364840625350565440546255434062434036535554625041
plaintext4 =  62554340622556494536376362284449396362165645365336556362364939622236533655433664

print 'decrypted msg1 =', number2string(plaintext1)
print 'decrypted msg2 =', number2string(plaintext2)
print 'decrypted msg3 =', number2string(plaintext3)
print 'decrypted msg4 =', number2string(plaintext4)
︡5e04d601-c704-4ca4-9913-b692f8fba1b9︡{"stdout":"decrypted msg1 = Thou art the ruler of the minds of a\n"}︡{"stdout":"decrypted msg2 = ll people, Dispenser of India'\n"}︡{"stdout":"decrypted msg3 = s destiny. Thy name rouses the hearts of\n"}︡{"stdout":"decrypted msg4 =  the Punjab, Sind, Gujarat, and Maratha.\n"}︡{"done":true}︡









