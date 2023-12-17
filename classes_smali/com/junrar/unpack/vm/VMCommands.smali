.class public final enum Lcom/junrar/unpack/vm/VMCommands;
.super Ljava/lang/Enum;
.source "VMCommands.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/junrar/unpack/vm/VMCommands;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/junrar/unpack/vm/VMCommands;

.field public static final enum VM_ADC:Lcom/junrar/unpack/vm/VMCommands;

.field public static final enum VM_ADD:Lcom/junrar/unpack/vm/VMCommands;

.field public static final enum VM_ADDB:Lcom/junrar/unpack/vm/VMCommands;

.field public static final enum VM_ADDD:Lcom/junrar/unpack/vm/VMCommands;

.field public static final enum VM_AND:Lcom/junrar/unpack/vm/VMCommands;

.field public static final enum VM_CALL:Lcom/junrar/unpack/vm/VMCommands;

.field public static final enum VM_CMP:Lcom/junrar/unpack/vm/VMCommands;

.field public static final enum VM_CMPB:Lcom/junrar/unpack/vm/VMCommands;

.field public static final enum VM_CMPD:Lcom/junrar/unpack/vm/VMCommands;

.field public static final enum VM_DEC:Lcom/junrar/unpack/vm/VMCommands;

.field public static final enum VM_DECB:Lcom/junrar/unpack/vm/VMCommands;

.field public static final enum VM_DECD:Lcom/junrar/unpack/vm/VMCommands;

.field public static final enum VM_DIV:Lcom/junrar/unpack/vm/VMCommands;

.field public static final enum VM_INC:Lcom/junrar/unpack/vm/VMCommands;

.field public static final enum VM_INCB:Lcom/junrar/unpack/vm/VMCommands;

.field public static final enum VM_INCD:Lcom/junrar/unpack/vm/VMCommands;

.field public static final enum VM_JA:Lcom/junrar/unpack/vm/VMCommands;

.field public static final enum VM_JAE:Lcom/junrar/unpack/vm/VMCommands;

.field public static final enum VM_JB:Lcom/junrar/unpack/vm/VMCommands;

.field public static final enum VM_JBE:Lcom/junrar/unpack/vm/VMCommands;

.field public static final enum VM_JMP:Lcom/junrar/unpack/vm/VMCommands;

.field public static final enum VM_JNS:Lcom/junrar/unpack/vm/VMCommands;

.field public static final enum VM_JNZ:Lcom/junrar/unpack/vm/VMCommands;

.field public static final enum VM_JS:Lcom/junrar/unpack/vm/VMCommands;

.field public static final enum VM_JZ:Lcom/junrar/unpack/vm/VMCommands;

.field public static final enum VM_MOV:Lcom/junrar/unpack/vm/VMCommands;

.field public static final enum VM_MOVB:Lcom/junrar/unpack/vm/VMCommands;

.field public static final enum VM_MOVD:Lcom/junrar/unpack/vm/VMCommands;

.field public static final enum VM_MOVSX:Lcom/junrar/unpack/vm/VMCommands;

.field public static final enum VM_MOVZX:Lcom/junrar/unpack/vm/VMCommands;

.field public static final enum VM_MUL:Lcom/junrar/unpack/vm/VMCommands;

.field public static final enum VM_NEG:Lcom/junrar/unpack/vm/VMCommands;

.field public static final enum VM_NEGB:Lcom/junrar/unpack/vm/VMCommands;

.field public static final enum VM_NEGD:Lcom/junrar/unpack/vm/VMCommands;

.field public static final enum VM_NOT:Lcom/junrar/unpack/vm/VMCommands;

.field public static final enum VM_OR:Lcom/junrar/unpack/vm/VMCommands;

.field public static final enum VM_POP:Lcom/junrar/unpack/vm/VMCommands;

.field public static final enum VM_POPA:Lcom/junrar/unpack/vm/VMCommands;

.field public static final enum VM_POPF:Lcom/junrar/unpack/vm/VMCommands;

.field public static final enum VM_PRINT:Lcom/junrar/unpack/vm/VMCommands;

.field public static final enum VM_PUSH:Lcom/junrar/unpack/vm/VMCommands;

.field public static final enum VM_PUSHA:Lcom/junrar/unpack/vm/VMCommands;

.field public static final enum VM_PUSHF:Lcom/junrar/unpack/vm/VMCommands;

.field public static final enum VM_RET:Lcom/junrar/unpack/vm/VMCommands;

.field public static final enum VM_SAR:Lcom/junrar/unpack/vm/VMCommands;

.field public static final enum VM_SBB:Lcom/junrar/unpack/vm/VMCommands;

.field public static final enum VM_SHL:Lcom/junrar/unpack/vm/VMCommands;

.field public static final enum VM_SHR:Lcom/junrar/unpack/vm/VMCommands;

.field public static final enum VM_STANDARD:Lcom/junrar/unpack/vm/VMCommands;

.field public static final enum VM_SUB:Lcom/junrar/unpack/vm/VMCommands;

.field public static final enum VM_SUBB:Lcom/junrar/unpack/vm/VMCommands;

.field public static final enum VM_SUBD:Lcom/junrar/unpack/vm/VMCommands;

.field public static final enum VM_TEST:Lcom/junrar/unpack/vm/VMCommands;

.field public static final enum VM_XCHG:Lcom/junrar/unpack/vm/VMCommands;

.field public static final enum VM_XOR:Lcom/junrar/unpack/vm/VMCommands;


# instance fields
.field private vmCommand:I


# direct methods
.method public static constructor <clinit>()V
    .registers 58

    new-instance v0, Lcom/junrar/unpack/vm/VMCommands;

    const-string v1, "VM_MOV"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/junrar/unpack/vm/VMCommands;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/junrar/unpack/vm/VMCommands;->VM_MOV:Lcom/junrar/unpack/vm/VMCommands;

    new-instance v1, Lcom/junrar/unpack/vm/VMCommands;

    const-string v3, "VM_CMP"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/junrar/unpack/vm/VMCommands;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/junrar/unpack/vm/VMCommands;->VM_CMP:Lcom/junrar/unpack/vm/VMCommands;

    new-instance v3, Lcom/junrar/unpack/vm/VMCommands;

    const-string v5, "VM_ADD"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/junrar/unpack/vm/VMCommands;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/junrar/unpack/vm/VMCommands;->VM_ADD:Lcom/junrar/unpack/vm/VMCommands;

    new-instance v5, Lcom/junrar/unpack/vm/VMCommands;

    const-string v7, "VM_SUB"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/junrar/unpack/vm/VMCommands;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/junrar/unpack/vm/VMCommands;->VM_SUB:Lcom/junrar/unpack/vm/VMCommands;

    new-instance v7, Lcom/junrar/unpack/vm/VMCommands;

    const-string v9, "VM_JZ"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lcom/junrar/unpack/vm/VMCommands;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/junrar/unpack/vm/VMCommands;->VM_JZ:Lcom/junrar/unpack/vm/VMCommands;

    new-instance v9, Lcom/junrar/unpack/vm/VMCommands;

    const-string v11, "VM_JNZ"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v12}, Lcom/junrar/unpack/vm/VMCommands;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/junrar/unpack/vm/VMCommands;->VM_JNZ:Lcom/junrar/unpack/vm/VMCommands;

    new-instance v11, Lcom/junrar/unpack/vm/VMCommands;

    const-string v13, "VM_INC"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v14}, Lcom/junrar/unpack/vm/VMCommands;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/junrar/unpack/vm/VMCommands;->VM_INC:Lcom/junrar/unpack/vm/VMCommands;

    new-instance v13, Lcom/junrar/unpack/vm/VMCommands;

    const-string v15, "VM_DEC"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14, v14}, Lcom/junrar/unpack/vm/VMCommands;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/junrar/unpack/vm/VMCommands;->VM_DEC:Lcom/junrar/unpack/vm/VMCommands;

    new-instance v15, Lcom/junrar/unpack/vm/VMCommands;

    const-string v14, "VM_JMP"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12, v12}, Lcom/junrar/unpack/vm/VMCommands;-><init>(Ljava/lang/String;II)V

    sput-object v15, Lcom/junrar/unpack/vm/VMCommands;->VM_JMP:Lcom/junrar/unpack/vm/VMCommands;

    new-instance v14, Lcom/junrar/unpack/vm/VMCommands;

    const-string v12, "VM_XOR"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10, v10}, Lcom/junrar/unpack/vm/VMCommands;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lcom/junrar/unpack/vm/VMCommands;->VM_XOR:Lcom/junrar/unpack/vm/VMCommands;

    new-instance v12, Lcom/junrar/unpack/vm/VMCommands;

    const-string v10, "VM_AND"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8, v8}, Lcom/junrar/unpack/vm/VMCommands;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lcom/junrar/unpack/vm/VMCommands;->VM_AND:Lcom/junrar/unpack/vm/VMCommands;

    new-instance v10, Lcom/junrar/unpack/vm/VMCommands;

    const-string v8, "VM_OR"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6, v6}, Lcom/junrar/unpack/vm/VMCommands;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcom/junrar/unpack/vm/VMCommands;->VM_OR:Lcom/junrar/unpack/vm/VMCommands;

    new-instance v8, Lcom/junrar/unpack/vm/VMCommands;

    const-string v6, "VM_TEST"

    const/16 v4, 0xc

    invoke-direct {v8, v6, v4, v4}, Lcom/junrar/unpack/vm/VMCommands;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/junrar/unpack/vm/VMCommands;->VM_TEST:Lcom/junrar/unpack/vm/VMCommands;

    new-instance v6, Lcom/junrar/unpack/vm/VMCommands;

    const-string v4, "VM_JS"

    const/16 v2, 0xd

    invoke-direct {v6, v4, v2, v2}, Lcom/junrar/unpack/vm/VMCommands;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/junrar/unpack/vm/VMCommands;->VM_JS:Lcom/junrar/unpack/vm/VMCommands;

    new-instance v4, Lcom/junrar/unpack/vm/VMCommands;

    const-string v2, "VM_JNS"

    move-object/from16 v16, v6

    const/16 v6, 0xe

    invoke-direct {v4, v2, v6, v6}, Lcom/junrar/unpack/vm/VMCommands;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/junrar/unpack/vm/VMCommands;->VM_JNS:Lcom/junrar/unpack/vm/VMCommands;

    new-instance v2, Lcom/junrar/unpack/vm/VMCommands;

    const-string v6, "VM_JB"

    move-object/from16 v17, v4

    const/16 v4, 0xf

    invoke-direct {v2, v6, v4, v4}, Lcom/junrar/unpack/vm/VMCommands;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/junrar/unpack/vm/VMCommands;->VM_JB:Lcom/junrar/unpack/vm/VMCommands;

    new-instance v6, Lcom/junrar/unpack/vm/VMCommands;

    const-string v4, "VM_JBE"

    move-object/from16 v18, v2

    const/16 v2, 0x10

    invoke-direct {v6, v4, v2, v2}, Lcom/junrar/unpack/vm/VMCommands;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/junrar/unpack/vm/VMCommands;->VM_JBE:Lcom/junrar/unpack/vm/VMCommands;

    new-instance v4, Lcom/junrar/unpack/vm/VMCommands;

    const-string v2, "VM_JA"

    move-object/from16 v19, v6

    const/16 v6, 0x11

    invoke-direct {v4, v2, v6, v6}, Lcom/junrar/unpack/vm/VMCommands;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/junrar/unpack/vm/VMCommands;->VM_JA:Lcom/junrar/unpack/vm/VMCommands;

    new-instance v2, Lcom/junrar/unpack/vm/VMCommands;

    const-string v6, "VM_JAE"

    move-object/from16 v20, v4

    const/16 v4, 0x12

    invoke-direct {v2, v6, v4, v4}, Lcom/junrar/unpack/vm/VMCommands;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/junrar/unpack/vm/VMCommands;->VM_JAE:Lcom/junrar/unpack/vm/VMCommands;

    new-instance v6, Lcom/junrar/unpack/vm/VMCommands;

    const-string v4, "VM_PUSH"

    move-object/from16 v21, v2

    const/16 v2, 0x13

    invoke-direct {v6, v4, v2, v2}, Lcom/junrar/unpack/vm/VMCommands;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/junrar/unpack/vm/VMCommands;->VM_PUSH:Lcom/junrar/unpack/vm/VMCommands;

    new-instance v4, Lcom/junrar/unpack/vm/VMCommands;

    const-string v2, "VM_POP"

    move-object/from16 v22, v6

    const/16 v6, 0x14

    invoke-direct {v4, v2, v6, v6}, Lcom/junrar/unpack/vm/VMCommands;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/junrar/unpack/vm/VMCommands;->VM_POP:Lcom/junrar/unpack/vm/VMCommands;

    new-instance v2, Lcom/junrar/unpack/vm/VMCommands;

    const-string v6, "VM_CALL"

    move-object/from16 v23, v4

    const/16 v4, 0x15

    invoke-direct {v2, v6, v4, v4}, Lcom/junrar/unpack/vm/VMCommands;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/junrar/unpack/vm/VMCommands;->VM_CALL:Lcom/junrar/unpack/vm/VMCommands;

    new-instance v6, Lcom/junrar/unpack/vm/VMCommands;

    const-string v4, "VM_RET"

    move-object/from16 v24, v2

    const/16 v2, 0x16

    move-object/from16 v25, v8

    const/16 v8, 0x16

    invoke-direct {v6, v4, v2, v8}, Lcom/junrar/unpack/vm/VMCommands;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/junrar/unpack/vm/VMCommands;->VM_RET:Lcom/junrar/unpack/vm/VMCommands;

    new-instance v2, Lcom/junrar/unpack/vm/VMCommands;

    const-string v4, "VM_NOT"

    const/16 v8, 0x17

    move-object/from16 v26, v6

    const/16 v6, 0x17

    invoke-direct {v2, v4, v8, v6}, Lcom/junrar/unpack/vm/VMCommands;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/junrar/unpack/vm/VMCommands;->VM_NOT:Lcom/junrar/unpack/vm/VMCommands;

    new-instance v4, Lcom/junrar/unpack/vm/VMCommands;

    const-string v6, "VM_SHL"

    const/16 v8, 0x18

    move-object/from16 v27, v2

    const/16 v2, 0x18

    invoke-direct {v4, v6, v8, v2}, Lcom/junrar/unpack/vm/VMCommands;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/junrar/unpack/vm/VMCommands;->VM_SHL:Lcom/junrar/unpack/vm/VMCommands;

    new-instance v2, Lcom/junrar/unpack/vm/VMCommands;

    const-string v6, "VM_SHR"

    const/16 v8, 0x19

    move-object/from16 v28, v4

    const/16 v4, 0x19

    invoke-direct {v2, v6, v8, v4}, Lcom/junrar/unpack/vm/VMCommands;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/junrar/unpack/vm/VMCommands;->VM_SHR:Lcom/junrar/unpack/vm/VMCommands;

    new-instance v4, Lcom/junrar/unpack/vm/VMCommands;

    const-string v6, "VM_SAR"

    const/16 v8, 0x1a

    move-object/from16 v29, v2

    const/16 v2, 0x1a

    invoke-direct {v4, v6, v8, v2}, Lcom/junrar/unpack/vm/VMCommands;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/junrar/unpack/vm/VMCommands;->VM_SAR:Lcom/junrar/unpack/vm/VMCommands;

    new-instance v2, Lcom/junrar/unpack/vm/VMCommands;

    const-string v6, "VM_NEG"

    const/16 v8, 0x1b

    move-object/from16 v30, v4

    const/16 v4, 0x1b

    invoke-direct {v2, v6, v8, v4}, Lcom/junrar/unpack/vm/VMCommands;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/junrar/unpack/vm/VMCommands;->VM_NEG:Lcom/junrar/unpack/vm/VMCommands;

    new-instance v4, Lcom/junrar/unpack/vm/VMCommands;

    const-string v6, "VM_PUSHA"

    const/16 v8, 0x1c

    move-object/from16 v31, v2

    const/16 v2, 0x1c

    invoke-direct {v4, v6, v8, v2}, Lcom/junrar/unpack/vm/VMCommands;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/junrar/unpack/vm/VMCommands;->VM_PUSHA:Lcom/junrar/unpack/vm/VMCommands;

    new-instance v2, Lcom/junrar/unpack/vm/VMCommands;

    const-string v6, "VM_POPA"

    const/16 v8, 0x1d

    move-object/from16 v32, v4

    const/16 v4, 0x1d

    invoke-direct {v2, v6, v8, v4}, Lcom/junrar/unpack/vm/VMCommands;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/junrar/unpack/vm/VMCommands;->VM_POPA:Lcom/junrar/unpack/vm/VMCommands;

    new-instance v4, Lcom/junrar/unpack/vm/VMCommands;

    const-string v6, "VM_PUSHF"

    const/16 v8, 0x1e

    move-object/from16 v33, v2

    const/16 v2, 0x1e

    invoke-direct {v4, v6, v8, v2}, Lcom/junrar/unpack/vm/VMCommands;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/junrar/unpack/vm/VMCommands;->VM_PUSHF:Lcom/junrar/unpack/vm/VMCommands;

    new-instance v2, Lcom/junrar/unpack/vm/VMCommands;

    const-string v6, "VM_POPF"

    const/16 v8, 0x1f

    move-object/from16 v34, v4

    const/16 v4, 0x1f

    invoke-direct {v2, v6, v8, v4}, Lcom/junrar/unpack/vm/VMCommands;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/junrar/unpack/vm/VMCommands;->VM_POPF:Lcom/junrar/unpack/vm/VMCommands;

    new-instance v4, Lcom/junrar/unpack/vm/VMCommands;

    const-string v6, "VM_MOVZX"

    const/16 v8, 0x20

    move-object/from16 v35, v2

    const/16 v2, 0x20

    invoke-direct {v4, v6, v8, v2}, Lcom/junrar/unpack/vm/VMCommands;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/junrar/unpack/vm/VMCommands;->VM_MOVZX:Lcom/junrar/unpack/vm/VMCommands;

    new-instance v2, Lcom/junrar/unpack/vm/VMCommands;

    const-string v6, "VM_MOVSX"

    const/16 v8, 0x21

    move-object/from16 v36, v4

    const/16 v4, 0x21

    invoke-direct {v2, v6, v8, v4}, Lcom/junrar/unpack/vm/VMCommands;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/junrar/unpack/vm/VMCommands;->VM_MOVSX:Lcom/junrar/unpack/vm/VMCommands;

    new-instance v4, Lcom/junrar/unpack/vm/VMCommands;

    const-string v6, "VM_XCHG"

    const/16 v8, 0x22

    move-object/from16 v37, v2

    const/16 v2, 0x22

    invoke-direct {v4, v6, v8, v2}, Lcom/junrar/unpack/vm/VMCommands;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/junrar/unpack/vm/VMCommands;->VM_XCHG:Lcom/junrar/unpack/vm/VMCommands;

    new-instance v2, Lcom/junrar/unpack/vm/VMCommands;

    const-string v6, "VM_MUL"

    const/16 v8, 0x23

    move-object/from16 v38, v4

    const/16 v4, 0x23

    invoke-direct {v2, v6, v8, v4}, Lcom/junrar/unpack/vm/VMCommands;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/junrar/unpack/vm/VMCommands;->VM_MUL:Lcom/junrar/unpack/vm/VMCommands;

    new-instance v4, Lcom/junrar/unpack/vm/VMCommands;

    const-string v6, "VM_DIV"

    const/16 v8, 0x24

    move-object/from16 v39, v2

    const/16 v2, 0x24

    invoke-direct {v4, v6, v8, v2}, Lcom/junrar/unpack/vm/VMCommands;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/junrar/unpack/vm/VMCommands;->VM_DIV:Lcom/junrar/unpack/vm/VMCommands;

    new-instance v2, Lcom/junrar/unpack/vm/VMCommands;

    const-string v6, "VM_ADC"

    const/16 v8, 0x25

    move-object/from16 v40, v4

    const/16 v4, 0x25

    invoke-direct {v2, v6, v8, v4}, Lcom/junrar/unpack/vm/VMCommands;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/junrar/unpack/vm/VMCommands;->VM_ADC:Lcom/junrar/unpack/vm/VMCommands;

    new-instance v4, Lcom/junrar/unpack/vm/VMCommands;

    const-string v6, "VM_SBB"

    const/16 v8, 0x26

    move-object/from16 v41, v2

    const/16 v2, 0x26

    invoke-direct {v4, v6, v8, v2}, Lcom/junrar/unpack/vm/VMCommands;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/junrar/unpack/vm/VMCommands;->VM_SBB:Lcom/junrar/unpack/vm/VMCommands;

    new-instance v2, Lcom/junrar/unpack/vm/VMCommands;

    const-string v6, "VM_PRINT"

    const/16 v8, 0x27

    move-object/from16 v42, v4

    const/16 v4, 0x27

    invoke-direct {v2, v6, v8, v4}, Lcom/junrar/unpack/vm/VMCommands;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/junrar/unpack/vm/VMCommands;->VM_PRINT:Lcom/junrar/unpack/vm/VMCommands;

    new-instance v4, Lcom/junrar/unpack/vm/VMCommands;

    const-string v6, "VM_MOVB"

    const/16 v8, 0x28

    move-object/from16 v43, v2

    const/16 v2, 0x28

    invoke-direct {v4, v6, v8, v2}, Lcom/junrar/unpack/vm/VMCommands;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/junrar/unpack/vm/VMCommands;->VM_MOVB:Lcom/junrar/unpack/vm/VMCommands;

    new-instance v2, Lcom/junrar/unpack/vm/VMCommands;

    const-string v6, "VM_MOVD"

    const/16 v8, 0x29

    move-object/from16 v44, v4

    const/16 v4, 0x29

    invoke-direct {v2, v6, v8, v4}, Lcom/junrar/unpack/vm/VMCommands;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/junrar/unpack/vm/VMCommands;->VM_MOVD:Lcom/junrar/unpack/vm/VMCommands;

    new-instance v4, Lcom/junrar/unpack/vm/VMCommands;

    const-string v6, "VM_CMPB"

    const/16 v8, 0x2a

    move-object/from16 v45, v2

    const/16 v2, 0x2a

    invoke-direct {v4, v6, v8, v2}, Lcom/junrar/unpack/vm/VMCommands;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/junrar/unpack/vm/VMCommands;->VM_CMPB:Lcom/junrar/unpack/vm/VMCommands;

    new-instance v2, Lcom/junrar/unpack/vm/VMCommands;

    const-string v6, "VM_CMPD"

    const/16 v8, 0x2b

    move-object/from16 v46, v4

    const/16 v4, 0x2b

    invoke-direct {v2, v6, v8, v4}, Lcom/junrar/unpack/vm/VMCommands;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/junrar/unpack/vm/VMCommands;->VM_CMPD:Lcom/junrar/unpack/vm/VMCommands;

    new-instance v4, Lcom/junrar/unpack/vm/VMCommands;

    const-string v6, "VM_ADDB"

    const/16 v8, 0x2c

    move-object/from16 v47, v2

    const/16 v2, 0x2c

    invoke-direct {v4, v6, v8, v2}, Lcom/junrar/unpack/vm/VMCommands;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/junrar/unpack/vm/VMCommands;->VM_ADDB:Lcom/junrar/unpack/vm/VMCommands;

    new-instance v2, Lcom/junrar/unpack/vm/VMCommands;

    const-string v6, "VM_ADDD"

    const/16 v8, 0x2d

    move-object/from16 v48, v4

    const/16 v4, 0x2d

    invoke-direct {v2, v6, v8, v4}, Lcom/junrar/unpack/vm/VMCommands;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/junrar/unpack/vm/VMCommands;->VM_ADDD:Lcom/junrar/unpack/vm/VMCommands;

    new-instance v4, Lcom/junrar/unpack/vm/VMCommands;

    const-string v6, "VM_SUBB"

    const/16 v8, 0x2e

    move-object/from16 v49, v2

    const/16 v2, 0x2e

    invoke-direct {v4, v6, v8, v2}, Lcom/junrar/unpack/vm/VMCommands;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/junrar/unpack/vm/VMCommands;->VM_SUBB:Lcom/junrar/unpack/vm/VMCommands;

    new-instance v2, Lcom/junrar/unpack/vm/VMCommands;

    const-string v6, "VM_SUBD"

    const/16 v8, 0x2f

    move-object/from16 v50, v4

    const/16 v4, 0x2f

    invoke-direct {v2, v6, v8, v4}, Lcom/junrar/unpack/vm/VMCommands;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/junrar/unpack/vm/VMCommands;->VM_SUBD:Lcom/junrar/unpack/vm/VMCommands;

    new-instance v4, Lcom/junrar/unpack/vm/VMCommands;

    const-string v6, "VM_INCB"

    const/16 v8, 0x30

    move-object/from16 v51, v2

    const/16 v2, 0x30

    invoke-direct {v4, v6, v8, v2}, Lcom/junrar/unpack/vm/VMCommands;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/junrar/unpack/vm/VMCommands;->VM_INCB:Lcom/junrar/unpack/vm/VMCommands;

    new-instance v2, Lcom/junrar/unpack/vm/VMCommands;

    const-string v6, "VM_INCD"

    const/16 v8, 0x31

    move-object/from16 v52, v4

    const/16 v4, 0x31

    invoke-direct {v2, v6, v8, v4}, Lcom/junrar/unpack/vm/VMCommands;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/junrar/unpack/vm/VMCommands;->VM_INCD:Lcom/junrar/unpack/vm/VMCommands;

    new-instance v4, Lcom/junrar/unpack/vm/VMCommands;

    const-string v6, "VM_DECB"

    const/16 v8, 0x32

    move-object/from16 v53, v2

    const/16 v2, 0x32

    invoke-direct {v4, v6, v8, v2}, Lcom/junrar/unpack/vm/VMCommands;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/junrar/unpack/vm/VMCommands;->VM_DECB:Lcom/junrar/unpack/vm/VMCommands;

    new-instance v2, Lcom/junrar/unpack/vm/VMCommands;

    const-string v6, "VM_DECD"

    const/16 v8, 0x33

    move-object/from16 v54, v4

    const/16 v4, 0x33

    invoke-direct {v2, v6, v8, v4}, Lcom/junrar/unpack/vm/VMCommands;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/junrar/unpack/vm/VMCommands;->VM_DECD:Lcom/junrar/unpack/vm/VMCommands;

    new-instance v4, Lcom/junrar/unpack/vm/VMCommands;

    const-string v6, "VM_NEGB"

    const/16 v8, 0x34

    move-object/from16 v55, v2

    const/16 v2, 0x34

    invoke-direct {v4, v6, v8, v2}, Lcom/junrar/unpack/vm/VMCommands;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/junrar/unpack/vm/VMCommands;->VM_NEGB:Lcom/junrar/unpack/vm/VMCommands;

    new-instance v2, Lcom/junrar/unpack/vm/VMCommands;

    const-string v6, "VM_NEGD"

    const/16 v8, 0x35

    move-object/from16 v56, v4

    const/16 v4, 0x35

    invoke-direct {v2, v6, v8, v4}, Lcom/junrar/unpack/vm/VMCommands;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/junrar/unpack/vm/VMCommands;->VM_NEGD:Lcom/junrar/unpack/vm/VMCommands;

    new-instance v4, Lcom/junrar/unpack/vm/VMCommands;

    const-string v6, "VM_STANDARD"

    const/16 v8, 0x36

    move-object/from16 v57, v2

    const/16 v2, 0x36

    invoke-direct {v4, v6, v8, v2}, Lcom/junrar/unpack/vm/VMCommands;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/junrar/unpack/vm/VMCommands;->VM_STANDARD:Lcom/junrar/unpack/vm/VMCommands;

    const/16 v2, 0x37

    new-array v2, v2, [Lcom/junrar/unpack/vm/VMCommands;

    const/4 v6, 0x0

    aput-object v0, v2, v6

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const/4 v0, 0x2

    aput-object v3, v2, v0

    const/4 v0, 0x3

    aput-object v5, v2, v0

    const/4 v0, 0x4

    aput-object v7, v2, v0

    const/4 v0, 0x5

    aput-object v9, v2, v0

    const/4 v0, 0x6

    aput-object v11, v2, v0

    const/4 v0, 0x7

    aput-object v13, v2, v0

    const/16 v0, 0x8

    aput-object v15, v2, v0

    const/16 v0, 0x9

    aput-object v14, v2, v0

    const/16 v0, 0xa

    aput-object v12, v2, v0

    const/16 v0, 0xb

    aput-object v10, v2, v0

    const/16 v0, 0xc

    aput-object v25, v2, v0

    const/16 v0, 0xd

    aput-object v16, v2, v0

    const/16 v0, 0xe

    aput-object v17, v2, v0

    const/16 v0, 0xf

    aput-object v18, v2, v0

    const/16 v0, 0x10

    aput-object v19, v2, v0

    const/16 v0, 0x11

    aput-object v20, v2, v0

    const/16 v0, 0x12

    aput-object v21, v2, v0

    const/16 v0, 0x13

    aput-object v22, v2, v0

    const/16 v0, 0x14

    aput-object v23, v2, v0

    const/16 v0, 0x15

    aput-object v24, v2, v0

    const/16 v0, 0x16

    aput-object v26, v2, v0

    const/16 v0, 0x17

    aput-object v27, v2, v0

    const/16 v0, 0x18

    aput-object v28, v2, v0

    const/16 v0, 0x19

    aput-object v29, v2, v0

    const/16 v0, 0x1a

    aput-object v30, v2, v0

    const/16 v0, 0x1b

    aput-object v31, v2, v0

    const/16 v0, 0x1c

    aput-object v32, v2, v0

    const/16 v0, 0x1d

    aput-object v33, v2, v0

    const/16 v0, 0x1e

    aput-object v34, v2, v0

    const/16 v0, 0x1f

    aput-object v35, v2, v0

    const/16 v0, 0x20

    aput-object v36, v2, v0

    const/16 v0, 0x21

    aput-object v37, v2, v0

    const/16 v0, 0x22

    aput-object v38, v2, v0

    const/16 v0, 0x23

    aput-object v39, v2, v0

    const/16 v0, 0x24

    aput-object v40, v2, v0

    const/16 v0, 0x25

    aput-object v41, v2, v0

    const/16 v0, 0x26

    aput-object v42, v2, v0

    const/16 v0, 0x27

    aput-object v43, v2, v0

    const/16 v0, 0x28

    aput-object v44, v2, v0

    const/16 v0, 0x29

    aput-object v45, v2, v0

    const/16 v0, 0x2a

    aput-object v46, v2, v0

    const/16 v0, 0x2b

    aput-object v47, v2, v0

    const/16 v0, 0x2c

    aput-object v48, v2, v0

    const/16 v0, 0x2d

    aput-object v49, v2, v0

    const/16 v0, 0x2e

    aput-object v50, v2, v0

    const/16 v0, 0x2f

    aput-object v51, v2, v0

    const/16 v0, 0x30

    aput-object v52, v2, v0

    const/16 v0, 0x31

    aput-object v53, v2, v0

    const/16 v0, 0x32

    aput-object v54, v2, v0

    const/16 v0, 0x33

    aput-object v55, v2, v0

    const/16 v0, 0x34

    aput-object v56, v2, v0

    const/16 v0, 0x35

    aput-object v57, v2, v0

    const/16 v0, 0x36

    aput-object v4, v2, v0

    sput-object v2, Lcom/junrar/unpack/vm/VMCommands;->$VALUES:[Lcom/junrar/unpack/vm/VMCommands;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/junrar/unpack/vm/VMCommands;->vmCommand:I

    return-void
.end method

.method private equals(I)Z
    .registers 3

    iget v0, p0, Lcom/junrar/unpack/vm/VMCommands;->vmCommand:I

    if-ne v0, p1, :cond_6

    const/4 p1, 0x1

    goto :goto_7

    :cond_6
    const/4 p1, 0x0

    :goto_7
    return p1
.end method

.method public static findVMCommand(I)Lcom/junrar/unpack/vm/VMCommands;
    .registers 3

    sget-object v0, Lcom/junrar/unpack/vm/VMCommands;->VM_MOV:Lcom/junrar/unpack/vm/VMCommands;

    invoke-direct {v0, p0}, Lcom/junrar/unpack/vm/VMCommands;->equals(I)Z

    move-result v1

    if-eqz v1, :cond_9

    return-object v0

    :cond_9
    sget-object v0, Lcom/junrar/unpack/vm/VMCommands;->VM_CMP:Lcom/junrar/unpack/vm/VMCommands;

    invoke-direct {v0, p0}, Lcom/junrar/unpack/vm/VMCommands;->equals(I)Z

    move-result v1

    if-eqz v1, :cond_12

    return-object v0

    :cond_12
    sget-object v0, Lcom/junrar/unpack/vm/VMCommands;->VM_ADD:Lcom/junrar/unpack/vm/VMCommands;

    invoke-direct {v0, p0}, Lcom/junrar/unpack/vm/VMCommands;->equals(I)Z

    move-result v1

    if-eqz v1, :cond_1b

    return-object v0

    :cond_1b
    sget-object v0, Lcom/junrar/unpack/vm/VMCommands;->VM_SUB:Lcom/junrar/unpack/vm/VMCommands;

    invoke-direct {v0, p0}, Lcom/junrar/unpack/vm/VMCommands;->equals(I)Z

    move-result v1

    if-eqz v1, :cond_24

    return-object v0

    :cond_24
    sget-object v0, Lcom/junrar/unpack/vm/VMCommands;->VM_JZ:Lcom/junrar/unpack/vm/VMCommands;

    invoke-direct {v0, p0}, Lcom/junrar/unpack/vm/VMCommands;->equals(I)Z

    move-result v1

    if-eqz v1, :cond_2d

    return-object v0

    :cond_2d
    sget-object v0, Lcom/junrar/unpack/vm/VMCommands;->VM_JNZ:Lcom/junrar/unpack/vm/VMCommands;

    invoke-direct {v0, p0}, Lcom/junrar/unpack/vm/VMCommands;->equals(I)Z

    move-result v1

    if-eqz v1, :cond_36

    return-object v0

    :cond_36
    sget-object v0, Lcom/junrar/unpack/vm/VMCommands;->VM_INC:Lcom/junrar/unpack/vm/VMCommands;

    invoke-direct {v0, p0}, Lcom/junrar/unpack/vm/VMCommands;->equals(I)Z

    move-result v1

    if-eqz v1, :cond_3f

    return-object v0

    :cond_3f
    sget-object v0, Lcom/junrar/unpack/vm/VMCommands;->VM_DEC:Lcom/junrar/unpack/vm/VMCommands;

    invoke-direct {v0, p0}, Lcom/junrar/unpack/vm/VMCommands;->equals(I)Z

    move-result v1

    if-eqz v1, :cond_48

    return-object v0

    :cond_48
    sget-object v0, Lcom/junrar/unpack/vm/VMCommands;->VM_JMP:Lcom/junrar/unpack/vm/VMCommands;

    invoke-direct {v0, p0}, Lcom/junrar/unpack/vm/VMCommands;->equals(I)Z

    move-result v1

    if-eqz v1, :cond_51

    return-object v0

    :cond_51
    sget-object v0, Lcom/junrar/unpack/vm/VMCommands;->VM_XOR:Lcom/junrar/unpack/vm/VMCommands;

    invoke-direct {v0, p0}, Lcom/junrar/unpack/vm/VMCommands;->equals(I)Z

    move-result v1

    if-eqz v1, :cond_5a

    return-object v0

    :cond_5a
    sget-object v0, Lcom/junrar/unpack/vm/VMCommands;->VM_AND:Lcom/junrar/unpack/vm/VMCommands;

    invoke-direct {v0, p0}, Lcom/junrar/unpack/vm/VMCommands;->equals(I)Z

    move-result v1

    if-eqz v1, :cond_63

    return-object v0

    :cond_63
    sget-object v0, Lcom/junrar/unpack/vm/VMCommands;->VM_OR:Lcom/junrar/unpack/vm/VMCommands;

    invoke-direct {v0, p0}, Lcom/junrar/unpack/vm/VMCommands;->equals(I)Z

    move-result v1

    if-eqz v1, :cond_6c

    return-object v0

    :cond_6c
    sget-object v0, Lcom/junrar/unpack/vm/VMCommands;->VM_TEST:Lcom/junrar/unpack/vm/VMCommands;

    invoke-direct {v0, p0}, Lcom/junrar/unpack/vm/VMCommands;->equals(I)Z

    move-result v1

    if-eqz v1, :cond_75

    return-object v0

    :cond_75
    sget-object v0, Lcom/junrar/unpack/vm/VMCommands;->VM_JS:Lcom/junrar/unpack/vm/VMCommands;

    invoke-direct {v0, p0}, Lcom/junrar/unpack/vm/VMCommands;->equals(I)Z

    move-result v1

    if-eqz v1, :cond_7e

    return-object v0

    :cond_7e
    sget-object v0, Lcom/junrar/unpack/vm/VMCommands;->VM_JNS:Lcom/junrar/unpack/vm/VMCommands;

    invoke-direct {v0, p0}, Lcom/junrar/unpack/vm/VMCommands;->equals(I)Z

    move-result v1

    if-eqz v1, :cond_87

    return-object v0

    :cond_87
    sget-object v0, Lcom/junrar/unpack/vm/VMCommands;->VM_JB:Lcom/junrar/unpack/vm/VMCommands;

    invoke-direct {v0, p0}, Lcom/junrar/unpack/vm/VMCommands;->equals(I)Z

    move-result v1

    if-eqz v1, :cond_90

    return-object v0

    :cond_90
    sget-object v0, Lcom/junrar/unpack/vm/VMCommands;->VM_JBE:Lcom/junrar/unpack/vm/VMCommands;

    invoke-direct {v0, p0}, Lcom/junrar/unpack/vm/VMCommands;->equals(I)Z

    move-result v1

    if-eqz v1, :cond_99

    return-object v0

    :cond_99
    sget-object v0, Lcom/junrar/unpack/vm/VMCommands;->VM_JA:Lcom/junrar/unpack/vm/VMCommands;

    invoke-direct {v0, p0}, Lcom/junrar/unpack/vm/VMCommands;->equals(I)Z

    move-result v1

    if-eqz v1, :cond_a2

    return-object v0

    :cond_a2
    sget-object v0, Lcom/junrar/unpack/vm/VMCommands;->VM_JAE:Lcom/junrar/unpack/vm/VMCommands;

    invoke-direct {v0, p0}, Lcom/junrar/unpack/vm/VMCommands;->equals(I)Z

    move-result v1

    if-eqz v1, :cond_ab

    return-object v0

    :cond_ab
    sget-object v0, Lcom/junrar/unpack/vm/VMCommands;->VM_PUSH:Lcom/junrar/unpack/vm/VMCommands;

    invoke-direct {v0, p0}, Lcom/junrar/unpack/vm/VMCommands;->equals(I)Z

    move-result v1

    if-eqz v1, :cond_b4

    return-object v0

    :cond_b4
    sget-object v0, Lcom/junrar/unpack/vm/VMCommands;->VM_POP:Lcom/junrar/unpack/vm/VMCommands;

    invoke-direct {v0, p0}, Lcom/junrar/unpack/vm/VMCommands;->equals(I)Z

    move-result v1

    if-eqz v1, :cond_bd

    return-object v0

    :cond_bd
    sget-object v0, Lcom/junrar/unpack/vm/VMCommands;->VM_CALL:Lcom/junrar/unpack/vm/VMCommands;

    invoke-direct {v0, p0}, Lcom/junrar/unpack/vm/VMCommands;->equals(I)Z

    move-result v1

    if-eqz v1, :cond_c6

    return-object v0

    :cond_c6
    sget-object v0, Lcom/junrar/unpack/vm/VMCommands;->VM_RET:Lcom/junrar/unpack/vm/VMCommands;

    invoke-direct {v0, p0}, Lcom/junrar/unpack/vm/VMCommands;->equals(I)Z

    move-result v1

    if-eqz v1, :cond_cf

    return-object v0

    :cond_cf
    sget-object v0, Lcom/junrar/unpack/vm/VMCommands;->VM_NOT:Lcom/junrar/unpack/vm/VMCommands;

    invoke-direct {v0, p0}, Lcom/junrar/unpack/vm/VMCommands;->equals(I)Z

    move-result v1

    if-eqz v1, :cond_d8

    return-object v0

    :cond_d8
    sget-object v0, Lcom/junrar/unpack/vm/VMCommands;->VM_SHL:Lcom/junrar/unpack/vm/VMCommands;

    invoke-direct {v0, p0}, Lcom/junrar/unpack/vm/VMCommands;->equals(I)Z

    move-result v1

    if-eqz v1, :cond_e1

    return-object v0

    :cond_e1
    sget-object v0, Lcom/junrar/unpack/vm/VMCommands;->VM_SHR:Lcom/junrar/unpack/vm/VMCommands;

    invoke-direct {v0, p0}, Lcom/junrar/unpack/vm/VMCommands;->equals(I)Z

    move-result v1

    if-eqz v1, :cond_ea

    return-object v0

    :cond_ea
    sget-object v0, Lcom/junrar/unpack/vm/VMCommands;->VM_SAR:Lcom/junrar/unpack/vm/VMCommands;

    invoke-direct {v0, p0}, Lcom/junrar/unpack/vm/VMCommands;->equals(I)Z

    move-result v1

    if-eqz v1, :cond_f3

    return-object v0

    :cond_f3
    sget-object v0, Lcom/junrar/unpack/vm/VMCommands;->VM_NEG:Lcom/junrar/unpack/vm/VMCommands;

    invoke-direct {v0, p0}, Lcom/junrar/unpack/vm/VMCommands;->equals(I)Z

    move-result v1

    if-eqz v1, :cond_fc

    return-object v0

    :cond_fc
    sget-object v0, Lcom/junrar/unpack/vm/VMCommands;->VM_PUSHA:Lcom/junrar/unpack/vm/VMCommands;

    invoke-direct {v0, p0}, Lcom/junrar/unpack/vm/VMCommands;->equals(I)Z

    move-result v1

    if-eqz v1, :cond_105

    return-object v0

    :cond_105
    sget-object v0, Lcom/junrar/unpack/vm/VMCommands;->VM_POPA:Lcom/junrar/unpack/vm/VMCommands;

    invoke-direct {v0, p0}, Lcom/junrar/unpack/vm/VMCommands;->equals(I)Z

    move-result v1

    if-eqz v1, :cond_10e

    return-object v0

    :cond_10e
    sget-object v0, Lcom/junrar/unpack/vm/VMCommands;->VM_PUSHF:Lcom/junrar/unpack/vm/VMCommands;

    invoke-direct {v0, p0}, Lcom/junrar/unpack/vm/VMCommands;->equals(I)Z

    move-result v1

    if-eqz v1, :cond_117

    return-object v0

    :cond_117
    sget-object v0, Lcom/junrar/unpack/vm/VMCommands;->VM_POPF:Lcom/junrar/unpack/vm/VMCommands;

    invoke-direct {v0, p0}, Lcom/junrar/unpack/vm/VMCommands;->equals(I)Z

    move-result v1

    if-eqz v1, :cond_120

    return-object v0

    :cond_120
    sget-object v0, Lcom/junrar/unpack/vm/VMCommands;->VM_MOVZX:Lcom/junrar/unpack/vm/VMCommands;

    invoke-direct {v0, p0}, Lcom/junrar/unpack/vm/VMCommands;->equals(I)Z

    move-result v1

    if-eqz v1, :cond_129

    return-object v0

    :cond_129
    sget-object v0, Lcom/junrar/unpack/vm/VMCommands;->VM_MOVSX:Lcom/junrar/unpack/vm/VMCommands;

    invoke-direct {v0, p0}, Lcom/junrar/unpack/vm/VMCommands;->equals(I)Z

    move-result v1

    if-eqz v1, :cond_132

    return-object v0

    :cond_132
    sget-object v0, Lcom/junrar/unpack/vm/VMCommands;->VM_XCHG:Lcom/junrar/unpack/vm/VMCommands;

    invoke-direct {v0, p0}, Lcom/junrar/unpack/vm/VMCommands;->equals(I)Z

    move-result v1

    if-eqz v1, :cond_13b

    return-object v0

    :cond_13b
    sget-object v0, Lcom/junrar/unpack/vm/VMCommands;->VM_MUL:Lcom/junrar/unpack/vm/VMCommands;

    invoke-direct {v0, p0}, Lcom/junrar/unpack/vm/VMCommands;->equals(I)Z

    move-result v1

    if-eqz v1, :cond_144

    return-object v0

    :cond_144
    sget-object v0, Lcom/junrar/unpack/vm/VMCommands;->VM_DIV:Lcom/junrar/unpack/vm/VMCommands;

    invoke-direct {v0, p0}, Lcom/junrar/unpack/vm/VMCommands;->equals(I)Z

    move-result v1

    if-eqz v1, :cond_14d

    return-object v0

    :cond_14d
    sget-object v0, Lcom/junrar/unpack/vm/VMCommands;->VM_ADC:Lcom/junrar/unpack/vm/VMCommands;

    invoke-direct {v0, p0}, Lcom/junrar/unpack/vm/VMCommands;->equals(I)Z

    move-result v1

    if-eqz v1, :cond_156

    return-object v0

    :cond_156
    sget-object v0, Lcom/junrar/unpack/vm/VMCommands;->VM_SBB:Lcom/junrar/unpack/vm/VMCommands;

    invoke-direct {v0, p0}, Lcom/junrar/unpack/vm/VMCommands;->equals(I)Z

    move-result v1

    if-eqz v1, :cond_15f

    return-object v0

    :cond_15f
    sget-object v0, Lcom/junrar/unpack/vm/VMCommands;->VM_PRINT:Lcom/junrar/unpack/vm/VMCommands;

    invoke-direct {v0, p0}, Lcom/junrar/unpack/vm/VMCommands;->equals(I)Z

    move-result v1

    if-eqz v1, :cond_168

    return-object v0

    :cond_168
    sget-object v0, Lcom/junrar/unpack/vm/VMCommands;->VM_MOVB:Lcom/junrar/unpack/vm/VMCommands;

    invoke-direct {v0, p0}, Lcom/junrar/unpack/vm/VMCommands;->equals(I)Z

    move-result v1

    if-eqz v1, :cond_171

    return-object v0

    :cond_171
    sget-object v0, Lcom/junrar/unpack/vm/VMCommands;->VM_MOVD:Lcom/junrar/unpack/vm/VMCommands;

    invoke-direct {v0, p0}, Lcom/junrar/unpack/vm/VMCommands;->equals(I)Z

    move-result v1

    if-eqz v1, :cond_17a

    return-object v0

    :cond_17a
    sget-object v0, Lcom/junrar/unpack/vm/VMCommands;->VM_CMPB:Lcom/junrar/unpack/vm/VMCommands;

    invoke-direct {v0, p0}, Lcom/junrar/unpack/vm/VMCommands;->equals(I)Z

    move-result v1

    if-eqz v1, :cond_183

    return-object v0

    :cond_183
    sget-object v0, Lcom/junrar/unpack/vm/VMCommands;->VM_CMPD:Lcom/junrar/unpack/vm/VMCommands;

    invoke-direct {v0, p0}, Lcom/junrar/unpack/vm/VMCommands;->equals(I)Z

    move-result v1

    if-eqz v1, :cond_18c

    return-object v0

    :cond_18c
    sget-object v0, Lcom/junrar/unpack/vm/VMCommands;->VM_ADDB:Lcom/junrar/unpack/vm/VMCommands;

    invoke-direct {v0, p0}, Lcom/junrar/unpack/vm/VMCommands;->equals(I)Z

    move-result v1

    if-eqz v1, :cond_195

    return-object v0

    :cond_195
    sget-object v0, Lcom/junrar/unpack/vm/VMCommands;->VM_ADDD:Lcom/junrar/unpack/vm/VMCommands;

    invoke-direct {v0, p0}, Lcom/junrar/unpack/vm/VMCommands;->equals(I)Z

    move-result v1

    if-eqz v1, :cond_19e

    return-object v0

    :cond_19e
    sget-object v0, Lcom/junrar/unpack/vm/VMCommands;->VM_SUBB:Lcom/junrar/unpack/vm/VMCommands;

    invoke-direct {v0, p0}, Lcom/junrar/unpack/vm/VMCommands;->equals(I)Z

    move-result v1

    if-eqz v1, :cond_1a7

    return-object v0

    :cond_1a7
    sget-object v0, Lcom/junrar/unpack/vm/VMCommands;->VM_SUBD:Lcom/junrar/unpack/vm/VMCommands;

    invoke-direct {v0, p0}, Lcom/junrar/unpack/vm/VMCommands;->equals(I)Z

    move-result v1

    if-eqz v1, :cond_1b0

    return-object v0

    :cond_1b0
    sget-object v0, Lcom/junrar/unpack/vm/VMCommands;->VM_INCB:Lcom/junrar/unpack/vm/VMCommands;

    invoke-direct {v0, p0}, Lcom/junrar/unpack/vm/VMCommands;->equals(I)Z

    move-result v1

    if-eqz v1, :cond_1b9

    return-object v0

    :cond_1b9
    sget-object v0, Lcom/junrar/unpack/vm/VMCommands;->VM_INCD:Lcom/junrar/unpack/vm/VMCommands;

    invoke-direct {v0, p0}, Lcom/junrar/unpack/vm/VMCommands;->equals(I)Z

    move-result v1

    if-eqz v1, :cond_1c2

    return-object v0

    :cond_1c2
    sget-object v0, Lcom/junrar/unpack/vm/VMCommands;->VM_DECB:Lcom/junrar/unpack/vm/VMCommands;

    invoke-direct {v0, p0}, Lcom/junrar/unpack/vm/VMCommands;->equals(I)Z

    move-result v1

    if-eqz v1, :cond_1cb

    return-object v0

    :cond_1cb
    sget-object v0, Lcom/junrar/unpack/vm/VMCommands;->VM_DECD:Lcom/junrar/unpack/vm/VMCommands;

    invoke-direct {v0, p0}, Lcom/junrar/unpack/vm/VMCommands;->equals(I)Z

    move-result v1

    if-eqz v1, :cond_1d4

    return-object v0

    :cond_1d4
    sget-object v0, Lcom/junrar/unpack/vm/VMCommands;->VM_NEGB:Lcom/junrar/unpack/vm/VMCommands;

    invoke-direct {v0, p0}, Lcom/junrar/unpack/vm/VMCommands;->equals(I)Z

    move-result v1

    if-eqz v1, :cond_1dd

    return-object v0

    :cond_1dd
    sget-object v0, Lcom/junrar/unpack/vm/VMCommands;->VM_NEGD:Lcom/junrar/unpack/vm/VMCommands;

    invoke-direct {v0, p0}, Lcom/junrar/unpack/vm/VMCommands;->equals(I)Z

    move-result v1

    if-eqz v1, :cond_1e6

    return-object v0

    :cond_1e6
    sget-object v0, Lcom/junrar/unpack/vm/VMCommands;->VM_STANDARD:Lcom/junrar/unpack/vm/VMCommands;

    invoke-direct {v0, p0}, Lcom/junrar/unpack/vm/VMCommands;->equals(I)Z

    move-result p0

    if-eqz p0, :cond_1ef

    return-object v0

    :cond_1ef
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/junrar/unpack/vm/VMCommands;
    .registers 2

    const-class v0, Lcom/junrar/unpack/vm/VMCommands;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/junrar/unpack/vm/VMCommands;

    return-object p0
.end method

.method public static values()[Lcom/junrar/unpack/vm/VMCommands;
    .registers 1

    sget-object v0, Lcom/junrar/unpack/vm/VMCommands;->$VALUES:[Lcom/junrar/unpack/vm/VMCommands;

    invoke-virtual {v0}, [Lcom/junrar/unpack/vm/VMCommands;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/junrar/unpack/vm/VMCommands;

    return-object v0
.end method


# virtual methods
.method public getVMCommand()I
    .registers 2

    iget v0, p0, Lcom/junrar/unpack/vm/VMCommands;->vmCommand:I

    return v0
.end method
