import cgmquantify as cgm

data = cgm.importdexcom('test_file.csv')

print('interdaysd is: ' + str(cgm.interdaysd(data)))
print('interdaycv is: ' + str(cgm.interdaycv(data)))
print('intradaysd is: ' + str(cgm.intradaysd(data)))
print('intradaycv is: ' + str(cgm.intradaycv(data)))
print('TOR is: ' + str(cgm.TOR(data)))
print('TIR is: ' + str(cgm.TIR(data)))
print('POR is: ' + str(cgm.POR(data)))
print('MAGE is: ' + str(cgm.MAGE(data)))
print('MAGN is: ' + str(cgm.MAGN(data)))
print('MODD is: ' + str(cgm.MODD(data)))
print('J_index is: ' + str(cgm.J_index(data)))
print('LBGI is: ' + str(cgm.LBGI(data)))
print('HBGI is: ' + str(cgm.HBGI(data)))
print('ADRR is: ' + str(cgm.ADRR(data)))
print('CONGA24 is: ' + str(cgm.CONGA24(data)))
print('GMI is: ' + str(cgm.GMI(data)))
print('eA1c is: ' + str(cgm.eA1c(data)))
print('summary is: ' + str(cgm.summary(data)))

cgm.plotglucosebounds(data)

cgm.plotglucosesd(data)

cgm.plotglucosesmooth(data)
