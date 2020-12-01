format PE GUI 4.0
entry start
include 'win32a.inc'
VENTANA = 102
IDC_EDIT_1 = 1000
IDC_EDIT_2 = 1001
IDC_BTN_1 = 1005
IDC_BTN_2 = 1006
IDC_BTN_3 = 1007
IDC_BTN_4 = 1008
IDC_BTN_5 = 1009
IDC_BTN_6 = 1010

section '.code' code readable executable
mov bl,0
start:
    invoke GetModuleHandle,0
    invoke DialogBoxParam,eax,VENTANA,0,DialogProc,0
exit:
    invoke  ExitProcess,0

proc DialogProc uses esi edi ebx,hwnddlg,msg,wparam,lparam

  cmp [msg],WM_INITDIALOG
  je .wminitdialog

  cmp [msg],WM_COMMAND
  je .wmcommand

  cmp [msg],WM_CLOSE
  je .wmclose

  xor eax,eax
  jmp .quit

  .wminitdialog:     

    invoke SetDlgItemText,[hwnddlg],IDC_EDIT_1,palabra
    invoke SetDlgItemText,[hwnddlg],IDC_EDIT_2,txtEnBlanco

    jmp .done

  .wmcommand:        

    cmp [wparam], BN_CLICKED shl 16 + IDC_BTN_1
    je .BTN1
    cmp [wparam], BN_CLICKED shl 16 + IDC_BTN_2
    je .BTN2
    cmp [wparam], BN_CLICKED shl 16 + IDC_BTN_3
    je .BTN3
    cmp [wparam], BN_CLICKED shl 16 + IDC_BTN_4
    je .BTN4
    cmp [wparam], BN_CLICKED shl 16 + IDC_BTN_5
    je .BTN5
    cmp [wparam], BN_CLICKED shl 16 + IDC_BTN_6
    je .BTN6
    jmp .done

 .BTN6:
        mov bl,byte[cont]
        sub byte[cont],bl
        add byte[cont],48
        mov bl,0
        invoke GetDlgItem,[hwnddlg],IDR_LOGO
        invoke ShowWindow,eax,SW_HIDE
        invoke GetDlgItem,[hwnddlg],IDR_LOGO2
        invoke ShowWindow,eax,SW_HIDE
        invoke GetDlgItem,[hwnddlg],IDR_LOGO3
        invoke ShowWindow,eax,SW_HIDE
        invoke GetDlgItem,[hwnddlg],IDR_LOGO1
        invoke ShowWindow,eax,SW_HIDE
        invoke GetDlgItem,[hwnddlg],IDR_LOGO4
        invoke ShowWindow,eax,SW_HIDE
         invoke GetDlgItem,[hwnddlg],IDR_LOGO5
        invoke ShowWindow,eax,SW_HIDE
        sub dl,dl
        mov dl,byte[palabraE]
        sub byte[palabraE],dl
        add byte[palabraE],32
        sub dl,dl
        mov dl,byte[palabraE+1]
        sub byte[palabraE+1],dl
        add byte[palabraE+1],32
        sub dl,dl
        mov dl,byte[palabraE+2]
        sub byte[palabraE+2],dl
        add byte[palabraE+2],32
        sub dl,dl
        mov dl,byte[palabraE+3]
        sub byte[palabraE+3],dl
        add byte[palabraE+3],32
        sub dl,dl
        mov dl,byte[palabraE+4]
        sub byte[palabraE+4],dl
        add byte[palabraE+4],32
        sub dl,dl
        mov dl,byte[palabraE+5]
        sub byte[palabraE+5],dl
        add byte[palabraE+5],32
        sub dl,dl
        mov dl,byte[palabraE+6]
        sub byte[palabraE+6],dl
        add byte[palabraE+6],32
        sub dl,dl
        mov dl,byte[palabraE+7]
        sub byte[palabraE+7],dl
        add byte[palabraE+7],32
        sub dl,dl
        mov dl,byte[palabraE+8]
        sub byte[palabraE+8],dl
        add byte[palabraE+8],32
         sub dl,dl
        mov dl,byte[palabraE+9]
        sub byte[palabraE+9],dl
        add byte[palabraE+9],32
         sub dl,dl
        mov dl,byte[palabra]
        sub byte[palabra],dl
        add byte[palabra],95
        sub dl,dl
        mov dl,byte[palabra+2]
        sub byte[palabra+2],dl
        add byte[palabra+2],95
        sub dl,dl
        mov dl,byte[palabra+4]
        sub byte[palabra+4],dl
        add byte[palabra+4],95
        sub dl,dl
        mov dl,byte[palabra+6]
        sub byte[palabra+6],dl
        add byte[palabra+6],95
        sub dl,dl
        mov dl,byte[palabra+8]
        sub byte[palabra+8],dl
        add byte[palabra+8],95
        sub dl,dl
        mov dl,byte[palabra+10]
        sub byte[palabra+10],dl
        add byte[palabra+10],95
        sub dl,dl
        mov dl,byte[palabra+12]
        sub byte[palabra+12],dl
        add byte[palabra+12],95
        sub dl,dl
        mov dl,byte[palabra+14]
        sub byte[palabra+14],dl
        add byte[palabra+14],95
        sub dl,dl
        mov dl,byte[palabra+16]
        sub byte[palabra+16],dl
        add byte[palabra+16],95
        invoke SetDlgItemText,[hwnddlg],IDC_EDIT_1,palabra
        jmp .done
 .BTN5:
        mov dl,byte[palabra4]
        sub byte[palabraE],32
        add byte[palabraE],dl
        sub dl,dl
        mov dl,byte[palabra4+1]
        sub byte[palabraE+1],32
        add byte[palabraE+1],dl
        sub dl,dl
        mov dl,byte[palabra4+2]
        sub byte[palabraE+2],32
        add byte[palabraE+2],dl
        sub dl,dl
        mov dl,byte[palabra4+3]
        sub byte[palabraE+3],32
        add byte[palabraE+3],dl
        sub dl,dl
        mov dl,byte[palabra4+4]
        sub byte[palabraE+4],32
        add byte[palabraE+4],dl
        sub dl,dl
        mov dl,byte[palabra4+5]
        sub byte[palabraE+5],32
        add byte[palabraE+5],dl
        sub dl,dl
        mov dl,byte[palabra4+6]
        sub byte[palabraE+6],32
        add byte[palabraE+6],dl
        sub dl,dl
        mov dl,byte[palabra4+7]
        sub byte[palabraE+7],32
        add byte[palabraE+7],dl
        sub dl,dl
        mov dl,byte[palabra4+8]
        sub byte[palabraE+8],32
        add byte[palabraE+8],dl
        sub dl,dl

        jmp .done
 .BTN4:
         mov dl,byte[palabra3]
        sub byte[palabraE],32
        add byte[palabraE],dl
        sub dl,dl
        mov dl,byte[palabra3+1]
        sub byte[palabraE+1],32
        add byte[palabraE+1],dl
        sub dl,dl
        mov dl,byte[palabra3+2]
        sub byte[palabraE+2],32
        add byte[palabraE+2],dl
        sub dl,dl
        mov dl,byte[palabra3+3]
        sub byte[palabraE+3],32
        add byte[palabraE+3],dl
        sub dl,dl
        mov dl,byte[palabra3+4]
        sub byte[palabraE+4],32
        add byte[palabraE+4],dl
        sub dl,dl
        mov dl,byte[palabra3+5]
        sub byte[palabraE+5],32
        add byte[palabraE+5],dl
        sub dl,dl
        mov dl,byte[palabra3+6]
        sub byte[palabraE+6],32
        add byte[palabraE+6],dl
        sub dl,dl
        mov dl,byte[palabra3+7]
        sub byte[palabraE+7],32
        add byte[palabraE+7],dl
        sub dl,dl
        mov dl,byte[palabra3+8]
        sub byte[palabraE+8],32
        add byte[palabraE+8],dl
        sub dl,dl

        jmp .done
 .BTN3:
        mov dl,byte[palabra2]
        sub byte[palabraE],32
        add byte[palabraE],dl
        sub dl,dl
        mov dl,byte[palabra2+1]
        sub byte[palabraE+1],32
        add byte[palabraE+1],dl
        sub dl,dl
        mov dl,byte[palabra2+2]
        sub byte[palabraE+2],32
        add byte[palabraE+2],dl
        sub dl,dl
        mov dl,byte[palabra2+3]
        sub byte[palabraE+3],32
        add byte[palabraE+3],dl
        sub dl,dl
        mov dl,byte[palabra2+4]
        sub byte[palabraE+4],32
        add byte[palabraE+4],dl
        sub dl,dl
        mov dl,byte[palabra2+5]
        sub byte[palabraE+5],32
        add byte[palabraE+5],dl
        sub dl,dl
        mov dl,byte[palabra2+6]
        sub byte[palabraE+6],32
        add byte[palabraE+6],dl
        sub dl,dl
        mov dl,byte[palabra2+7]
        sub byte[palabraE+7],32
        add byte[palabraE+7],dl
        sub dl,dl
        mov dl,byte[palabra2+8]
        sub byte[palabraE+8],32
        add byte[palabraE+8],dl
        sub dl,dl

        jmp .done
 .BTN2:
        mov dl,byte[palabra1]
        sub byte[palabraE],32
        add byte[palabraE],dl
        sub dl,dl
        mov dl,byte[palabra1+1]
        sub byte[palabraE+1],32
        add byte[palabraE+1],dl
        sub dl,dl
        mov dl,byte[palabra1+2]
        sub byte[palabraE+2],32
        add byte[palabraE+2],dl
        sub dl,dl
        mov dl,byte[palabra1+3]
        sub byte[palabraE+3],32
        add byte[palabraE+3],dl
        sub dl,dl
        mov dl,byte[palabra1+4]
        sub byte[palabraE+4],32
        add byte[palabraE+4],dl
        sub dl,dl
        mov dl,byte[palabra1+5]
        sub byte[palabraE+5],32
        add byte[palabraE+5],dl
        sub dl,dl
        mov dl,byte[palabra1+6]
        sub byte[palabraE+6],32
        add byte[palabraE+6],dl
        sub dl,dl
        mov dl,byte[palabra1+7]
        sub byte[palabraE+7],32
        add byte[palabraE+7],dl
        sub dl,dl
        mov dl,byte[palabra1+8]
        sub byte[palabraE+8],32
        add byte[palabraE+8],dl
        sub dl,dl

        jmp .done
  .BTN1:              ; código del botón "Enter"
    cmp byte[cont],55
    je .done
    invoke GetDlgItemText,[hwnddlg],IDC_EDIT_2,z,113
    mov cl,0
    add cl,byte[z+1]
    cmp byte[palabraE],cl
    je .igual
    cmp byte[palabraE+1],cl
    je .igual2
    cmp byte[palabraE+2],cl
    je .igual3
    cmp byte[palabraE+3],cl
    je .igual4
    cmp byte[palabraE+4],cl
    je .igual5
    cmp byte[palabraE+5],cl
    je .igual6
    cmp byte[palabraE+6],cl
    je .igual7
    cmp byte[palabraE+7],cl
    je .igual8
    cmp byte[palabraE+8],cl
    je .igual9
    add byte[cont],1
    jmp .noIgual

  .igual:
    sub byte[palabra],95
    add byte[palabra],cl
    cmp byte[palabraE+1],cl
    je .igual2
    cmp byte[palabraE+2],cl
    je .igual3
    cmp byte[palabraE+3],cl
    je .igual4
    cmp byte[palabraE+4],cl
    je .igual5
    cmp byte[palabraE+5],cl
    je .igual6
    cmp byte[palabraE+6],cl
    je .igual7
    cmp byte[palabraE+7],cl
    je .igual8
    cmp byte[palabraE+8],cl
    je .igual9
    invoke SetDlgItemText,[hwnddlg],IDC_EDIT_1,palabra
    jmp .done
  .igual2:
    sub byte[palabra+2],95
    add byte[palabra+2],cl
    cmp byte[palabraE+2],cl
    je .igual3
    cmp byte[palabraE+3],cl
    je .igual4
    cmp byte[palabraE+4],cl
    je .igual5
    cmp byte[palabraE+5],cl
    je .igual6
    cmp byte[palabraE+6],cl
    je .igual7
    cmp byte[palabraE+7],cl
    je .igual8
    cmp byte[palabraE+8],cl
    je .igual9
    invoke SetDlgItemText,[hwnddlg],IDC_EDIT_1,palabra
    jmp .done
  .igual3:
    sub byte[palabra+4],95
    add byte[palabra+4],cl
    cmp byte[palabraE+3],cl
    je .igual4
    cmp byte[palabraE+4],cl
    je .igual5
    cmp byte[palabraE+5],cl
    je .igual6
    cmp byte[palabraE+6],cl
    je .igual7
    cmp byte[palabraE+7],cl
    je .igual8
    cmp byte[palabraE+8],cl
    je .igual9
    invoke SetDlgItemText,[hwnddlg],IDC_EDIT_1,palabra
    jmp .done
  .igual4:
    sub byte[palabra+6],95
    add byte[palabra+6],cl
    cmp byte[palabraE+4],cl
    je .igual5
    cmp byte[palabraE+5],cl
    je .igual6
    cmp byte[palabraE+6],cl
    je .igual7
    cmp byte[palabraE+7],cl
    je .igual8
    cmp byte[palabraE+8],cl
    je .igual9
    invoke SetDlgItemText,[hwnddlg],IDC_EDIT_1,palabra
    jmp .done
  .igual5:
    sub byte[palabra+8],95
    add byte[palabra+8],cl
    cmp byte[palabraE+5],cl
    je .igual6
    cmp byte[palabraE+6],cl
    je .igual7
    cmp byte[palabraE+7],cl
    je .igual8
    cmp byte[palabraE+8],cl
    je .igual9
    invoke SetDlgItemText,[hwnddlg],IDC_EDIT_1,palabra
    jmp .done
  .igual6:
    sub byte[palabra+10],95
    add byte[palabra+10],cl
    cmp byte[palabraE+6],cl
    je .igual7
    cmp byte[palabraE+7],cl
    je .igual8
    cmp byte[palabraE+8],cl
    je .igual9
    invoke SetDlgItemText,[hwnddlg],IDC_EDIT_1,palabra
    jmp .done
  .igual7:
    sub byte[palabra+12],95
    add byte[palabra+12],cl
    cmp byte[palabraE+7],cl
    je .igual8
    cmp byte[palabraE+8],cl
    je .igual9
    invoke SetDlgItemText,[hwnddlg],IDC_EDIT_1,palabra
    jmp .done
  .igual8:
    sub byte[palabra+14],95
    add byte[palabra+14],cl
    invoke SetDlgItemText,[hwnddlg],IDC_EDIT_1,palabra
    cmp byte[palabraE+8],cl
    je .igual9
    invoke SetDlgItemText,[hwnddlg],IDC_EDIT_1,palabra
    jmp .done
  .igual9:
    sub byte[palabra+16],95
    add byte[palabra+16],cl
    invoke SetDlgItemText,[hwnddlg],IDC_EDIT_1,palabra
    jmp .done

 .noIgual:
  cmp byte[cont],49
  je .noIgual1
  cmp byte[cont],50
  je .noIgual2
   cmp byte[cont],51
  je .noIgual3
   cmp byte[cont],52
  je .noIgual4
   cmp byte[cont],53
  je .noIgual5
   cmp byte[cont],54
  je .noIgual6
  jmp .done
.noIgual1:
invoke GetDlgItem,[hwnddlg],IDR_LOGO1
  invoke ShowWindow,eax,SW_HIDE
  invoke GetDlgItem,[hwnddlg],IDR_LOGO2
  invoke ShowWindow,eax,SW_HIDE
  invoke GetDlgItem,[hwnddlg],IDR_LOGO3
  invoke ShowWindow,eax,SW_HIDE
  invoke GetDlgItem,[hwnddlg],IDR_LOGO4
  invoke ShowWindow,eax,SW_HIDE
  invoke GetDlgItem,[hwnddlg],IDR_LOGO5
  invoke ShowWindow,eax,SW_HIDE

  invoke GetDlgItem,[hwnddlg],IDR_LOGO
  invoke ShowWindow,eax,SW_SHOWNOACTIVATE
  jmp .done
.noIgual2:
  invoke GetDlgItem,[hwnddlg],IDR_LOGO
  invoke ShowWindow,eax,SW_HIDE
  invoke GetDlgItem,[hwnddlg],IDR_LOGO2
  invoke ShowWindow,eax,SW_HIDE
  invoke GetDlgItem,[hwnddlg],IDR_LOGO3
  invoke ShowWindow,eax,SW_HIDE
  invoke GetDlgItem,[hwnddlg],IDR_LOGO4
  invoke ShowWindow,eax,SW_HIDE
  invoke GetDlgItem,[hwnddlg],IDR_LOGO5
  invoke ShowWindow,eax,SW_HIDE

  invoke GetDlgItem,[hwnddlg],IDR_LOGO1
  invoke ShowWindow,eax,SW_SHOWNOACTIVATE

  jmp .done
.noIgual3:
  invoke GetDlgItem,[hwnddlg],IDR_LOGO
  invoke ShowWindow,eax,SW_HIDE
  invoke GetDlgItem,[hwnddlg],IDR_LOGO1
  invoke ShowWindow,eax,SW_HIDE
  invoke GetDlgItem,[hwnddlg],IDR_LOGO3
  invoke ShowWindow,eax,SW_HIDE
  invoke GetDlgItem,[hwnddlg],IDR_LOGO4
  invoke ShowWindow,eax,SW_HIDE
  invoke GetDlgItem,[hwnddlg],IDR_LOGO5
  invoke ShowWindow,eax,SW_HIDE

  invoke GetDlgItem,[hwnddlg],IDR_LOGO2
  invoke ShowWindow,eax,SW_SHOWNOACTIVATE
  jmp .done
.noIgual4:
 invoke GetDlgItem,[hwnddlg],IDR_LOGO
  invoke ShowWindow,eax,SW_HIDE
  invoke GetDlgItem,[hwnddlg],IDR_LOGO2
  invoke ShowWindow,eax,SW_HIDE
  invoke GetDlgItem,[hwnddlg],IDR_LOGO1
  invoke ShowWindow,eax,SW_HIDE
  invoke GetDlgItem,[hwnddlg],IDR_LOGO4
  invoke ShowWindow,eax,SW_HIDE
  invoke GetDlgItem,[hwnddlg],IDR_LOGO5
  invoke ShowWindow,eax,SW_HIDE

  invoke GetDlgItem,[hwnddlg],IDR_LOGO3
  invoke ShowWindow,eax,SW_SHOWNOACTIVATE

  jmp .done
.noIgual5:
 invoke GetDlgItem,[hwnddlg],IDR_LOGO
  invoke ShowWindow,eax,SW_HIDE
  invoke GetDlgItem,[hwnddlg],IDR_LOGO2
  invoke ShowWindow,eax,SW_HIDE
  invoke GetDlgItem,[hwnddlg],IDR_LOGO3
  invoke ShowWindow,eax,SW_HIDE
  invoke GetDlgItem,[hwnddlg],IDR_LOGO1
  invoke ShowWindow,eax,SW_HIDE
  invoke GetDlgItem,[hwnddlg],IDR_LOGO5
  invoke ShowWindow,eax,SW_HIDE

  invoke GetDlgItem,[hwnddlg],IDR_LOGO4
  invoke ShowWindow,eax,SW_SHOWNOACTIVATE
  jmp .done
.noIgual6:
 invoke GetDlgItem,[hwnddlg],IDR_LOGO
  invoke ShowWindow,eax,SW_HIDE
  invoke GetDlgItem,[hwnddlg],IDR_LOGO2
  invoke ShowWindow,eax,SW_HIDE
  invoke GetDlgItem,[hwnddlg],IDR_LOGO3
  invoke ShowWindow,eax,SW_HIDE
  invoke GetDlgItem,[hwnddlg],IDR_LOGO1
  invoke ShowWindow,eax,SW_HIDE
  invoke GetDlgItem,[hwnddlg],IDR_LOGO4
  invoke ShowWindow,eax,SW_HIDE

  invoke GetDlgItem,[hwnddlg],IDR_LOGO5
  invoke ShowWindow,eax,SW_SHOWNOACTIVATE

  jmp .done
  .wmclose:

    invoke EndDialog,[hwnddlg],0

  .done:

    mov eax,1

  .quit:

  ret       

endp

section '.idata' import data readable writeable    

  library kernel,'KERNEL32.DLL',\
          user,'USER32.DLL'
  import kernel,\
         GetModuleHandle,'GetModuleHandleA',\
         ExitProcess,'ExitProcess'
  import user,\
         ShowWindow,'ShowWindow',\
         GetDlgItem,'GetDlgItem',\
         UpdateWindow,'UpdateWindow',\
         DialogBoxParam,'DialogBoxParamA',\ 
         SetDlgItemText,'SetDlgItemTextA',\
         GetDlgItemText,'GetDlgItemTextA',\
         EndDialog,'EndDialog'
         palabraE db "         ", 10
        .length= ($-palabraE)
         z db 8 dup 0
        palabra1 db "bebedores", 10
        .length= ($-palabra1)
        palabra2 db "afeitador", 10
        .length= ($-palabra2)
        palabra3 db "fabulosas", 10
        .length= ($-palabra3)
        palabra4 db "xenofobia", 10
        .length= ($-palabra4)
        cont db "0",10
        .length= ($-cont)
section '.text' readable writeable
        txtEnBlanco db " ",0
        txtClick db 10,0
        palabra db "_ _ _ _ _ _ _ _ _", 10
        .length= ($-palabra)




section '.rc' resource data readable 

  IDR_LOGO = 7
  IDR_LOGO1=11
  IDR_LOGO2=13
  IDR_LOGO3=15
  IDR_LOGO4=17
  IDR_LOGO5=19
  directory RT_DIALOG,dialogs,\
            RT_BITMAP,bitmaps
       
  resource dialogs,VENTANA,LANG_ENGLISH+SUBLANG_DEFAULT,mod_exp_dialog

  resource bitmaps,\
       IDR_LOGO,LANG_ENGLISH+SUBLANG_DEFAULT,logo ,\
           IDR_LOGO1,LANG_ENGLISH+SUBLANG_DEFAULT,logo1  ,\
           IDR_LOGO2,LANG_ENGLISH+SUBLANG_DEFAULT,logo2 ,\
           IDR_LOGO3,LANG_ENGLISH+SUBLANG_DEFAULT,logo3  ,\
           IDR_LOGO4,LANG_ENGLISH+SUBLANG_DEFAULT,logo4  ,\
           IDR_LOGO5,LANG_ENGLISH+SUBLANG_DEFAULT,logo5


  dialog mod_exp_dialog,\
  'Ahorcado: Kevin, Elvis & Daniel',0,0,300,200,\
  DS_MODALFRAME+WS_MINIMIZEBOX+DS_CENTER+WS_VISIBLE+WS_CAPTION+WS_SYSMENU,\
  0,0,"Arial",11

  dialogitem 'BUTTON','Ingrese una letra',-1,7,5,290,190,BS_GROUPBOX+WS_VISIBLE,0

  dialogitem 'EDIT',0,IDC_EDIT_1,18,120,160,20,ES_MULTILINE+ES_AUTOVSCROLL+ES_WANTRETURN+WS_VSCROLL+WS_BORDER+WS_VISIBLE,0

  dialogitem 'EDIT',0,IDC_EDIT_2,18,150,160,20,ES_MULTILINE+ES_AUTOVSCROLL+ES_WANTRETURN+WS_VSCROLL+WS_BORDER+WS_VISIBLE,0 ; Caja

  dialogitem 'BUTTON',"Enter",IDC_BTN_1,200,155,75,25,BS_PUSHBUTTON+WS_VISIBLE,0 ; Boton

   dialogitem 'BUTTON',"Palabra 1",IDC_BTN_2,170,20,50,30,BS_PUSHBUTTON+WS_VISIBLE,0 ; Boton

dialogitem 'BUTTON',"Palabra 2",IDC_BTN_3,230,20,50,30,BS_PUSHBUTTON+WS_VISIBLE,0 ; Boton

dialogitem 'BUTTON',"Palabra 3",IDC_BTN_4,170,60,50,30,BS_PUSHBUTTON+WS_VISIBLE,0 ; Boton

dialogitem 'BUTTON',"Palabra 4",IDC_BTN_5,230,60,50,30,BS_PUSHBUTTON+WS_VISIBLE,0 ; Boton

dialogitem 'BUTTON',"Reiniciar",IDC_BTN_6,200,120,75,25,BS_PUSHBUTTON+WS_VISIBLE,0 ; Boton

dialogitem 'STATIC',IDR_LOGO,IDR_LOGO,13,25,100,100,SS_BITMAP
 dialogitem 'STATIC',IDR_LOGO1,IDR_LOGO1,13,25,100,100,SS_BITMAP
  dialogitem 'STATIC',IDR_LOGO2,IDR_LOGO2,13,25,100,100,SS_BITMAP
   dialogitem 'STATIC',IDR_LOGO3,IDR_LOGO3,13,25,100,100,SS_BITMAP
  dialogitem 'STATIC',IDR_LOGO4,IDR_LOGO4,13,25,100,100,SS_BITMAP
   dialogitem 'STATIC',IDR_LOGO5,IDR_LOGO5,13,25,100,100,SS_BITMAP



  enddialog

  bitmap logo, 'ahorcado1.bmp'
  bitmap logo1, 'ahorcado2.bmp'
  bitmap logo2, 'ahorcado3.bmp'
  bitmap logo3, 'ahorcado4.bmp'
  bitmap logo4, 'ahorcado5.bmp'
  bitmap logo5, 'ahorcado6.bmp'