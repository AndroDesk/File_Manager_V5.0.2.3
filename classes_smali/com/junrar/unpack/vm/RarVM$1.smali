.class synthetic Lcom/junrar/unpack/vm/RarVM$1;
.super Ljava/lang/Object;
.source "RarVM.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/junrar/unpack/vm/RarVM;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation


# static fields
.field public static final synthetic $SwitchMap$com$junrar$unpack$vm$VMCommands:[I

.field public static final synthetic $SwitchMap$com$junrar$unpack$vm$VMStandardFilters:[I


# direct methods
.method public static constructor <clinit>()V
    .registers 9

    invoke-static {}, Lcom/junrar/unpack/vm/VMStandardFilters;->values()[Lcom/junrar/unpack/vm/VMStandardFilters;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/junrar/unpack/vm/RarVM$1;->$SwitchMap$com$junrar$unpack$vm$VMStandardFilters:[I

    const/4 v1, 0x1

    :try_start_a
    sget-object v2, Lcom/junrar/unpack/vm/VMStandardFilters;->VMSF_E8:Lcom/junrar/unpack/vm/VMStandardFilters;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_12} :catch_12

    :catch_12
    const/4 v0, 0x2

    :try_start_13
    sget-object v2, Lcom/junrar/unpack/vm/RarVM$1;->$SwitchMap$com$junrar$unpack$vm$VMStandardFilters:[I

    sget-object v3, Lcom/junrar/unpack/vm/VMStandardFilters;->VMSF_E8E9:Lcom/junrar/unpack/vm/VMStandardFilters;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_1d} :catch_1d

    :catch_1d
    const/4 v2, 0x3

    :try_start_1e
    sget-object v3, Lcom/junrar/unpack/vm/RarVM$1;->$SwitchMap$com$junrar$unpack$vm$VMStandardFilters:[I

    sget-object v4, Lcom/junrar/unpack/vm/VMStandardFilters;->VMSF_ITANIUM:Lcom/junrar/unpack/vm/VMStandardFilters;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e .. :try_end_28} :catch_28

    :catch_28
    const/4 v3, 0x4

    :try_start_29
    sget-object v4, Lcom/junrar/unpack/vm/RarVM$1;->$SwitchMap$com$junrar$unpack$vm$VMStandardFilters:[I

    sget-object v5, Lcom/junrar/unpack/vm/VMStandardFilters;->VMSF_DELTA:Lcom/junrar/unpack/vm/VMStandardFilters;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v3, v4, v5
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_29 .. :try_end_33} :catch_33

    :catch_33
    const/4 v4, 0x5

    :try_start_34
    sget-object v5, Lcom/junrar/unpack/vm/RarVM$1;->$SwitchMap$com$junrar$unpack$vm$VMStandardFilters:[I

    sget-object v6, Lcom/junrar/unpack/vm/VMStandardFilters;->VMSF_RGB:Lcom/junrar/unpack/vm/VMStandardFilters;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aput v4, v5, v6
    :try_end_3e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_34 .. :try_end_3e} :catch_3e

    :catch_3e
    const/4 v5, 0x6

    :try_start_3f
    sget-object v6, Lcom/junrar/unpack/vm/RarVM$1;->$SwitchMap$com$junrar$unpack$vm$VMStandardFilters:[I

    sget-object v7, Lcom/junrar/unpack/vm/VMStandardFilters;->VMSF_AUDIO:Lcom/junrar/unpack/vm/VMStandardFilters;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aput v5, v6, v7
    :try_end_49
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3f .. :try_end_49} :catch_49

    :catch_49
    const/4 v6, 0x7

    :try_start_4a
    sget-object v7, Lcom/junrar/unpack/vm/RarVM$1;->$SwitchMap$com$junrar$unpack$vm$VMStandardFilters:[I

    sget-object v8, Lcom/junrar/unpack/vm/VMStandardFilters;->VMSF_UPCASE:Lcom/junrar/unpack/vm/VMStandardFilters;

    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    aput v6, v7, v8
    :try_end_54
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4a .. :try_end_54} :catch_54

    :catch_54
    invoke-static {}, Lcom/junrar/unpack/vm/VMCommands;->values()[Lcom/junrar/unpack/vm/VMCommands;

    move-result-object v7

    array-length v7, v7

    new-array v7, v7, [I

    sput-object v7, Lcom/junrar/unpack/vm/RarVM$1;->$SwitchMap$com$junrar$unpack$vm$VMCommands:[I

    :try_start_5d
    sget-object v8, Lcom/junrar/unpack/vm/VMCommands;->VM_MOV:Lcom/junrar/unpack/vm/VMCommands;

    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    aput v1, v7, v8
    :try_end_65
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5d .. :try_end_65} :catch_65

    :catch_65
    :try_start_65
    sget-object v1, Lcom/junrar/unpack/vm/RarVM$1;->$SwitchMap$com$junrar$unpack$vm$VMCommands:[I

    sget-object v7, Lcom/junrar/unpack/vm/VMCommands;->VM_MOVB:Lcom/junrar/unpack/vm/VMCommands;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aput v0, v1, v7
    :try_end_6f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_65 .. :try_end_6f} :catch_6f

    :catch_6f
    :try_start_6f
    sget-object v0, Lcom/junrar/unpack/vm/RarVM$1;->$SwitchMap$com$junrar$unpack$vm$VMCommands:[I

    sget-object v1, Lcom/junrar/unpack/vm/VMCommands;->VM_MOVD:Lcom/junrar/unpack/vm/VMCommands;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_79
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6f .. :try_end_79} :catch_79

    :catch_79
    :try_start_79
    sget-object v0, Lcom/junrar/unpack/vm/RarVM$1;->$SwitchMap$com$junrar$unpack$vm$VMCommands:[I

    sget-object v1, Lcom/junrar/unpack/vm/VMCommands;->VM_CMP:Lcom/junrar/unpack/vm/VMCommands;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v3, v0, v1
    :try_end_83
    .catch Ljava/lang/NoSuchFieldError; {:try_start_79 .. :try_end_83} :catch_83

    :catch_83
    :try_start_83
    sget-object v0, Lcom/junrar/unpack/vm/RarVM$1;->$SwitchMap$com$junrar$unpack$vm$VMCommands:[I

    sget-object v1, Lcom/junrar/unpack/vm/VMCommands;->VM_CMPB:Lcom/junrar/unpack/vm/VMCommands;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v4, v0, v1
    :try_end_8d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_83 .. :try_end_8d} :catch_8d

    :catch_8d
    :try_start_8d
    sget-object v0, Lcom/junrar/unpack/vm/RarVM$1;->$SwitchMap$com$junrar$unpack$vm$VMCommands:[I

    sget-object v1, Lcom/junrar/unpack/vm/VMCommands;->VM_CMPD:Lcom/junrar/unpack/vm/VMCommands;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v5, v0, v1
    :try_end_97
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8d .. :try_end_97} :catch_97

    :catch_97
    :try_start_97
    sget-object v0, Lcom/junrar/unpack/vm/RarVM$1;->$SwitchMap$com$junrar$unpack$vm$VMCommands:[I

    sget-object v1, Lcom/junrar/unpack/vm/VMCommands;->VM_ADD:Lcom/junrar/unpack/vm/VMCommands;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v6, v0, v1
    :try_end_a1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_97 .. :try_end_a1} :catch_a1

    :catch_a1
    :try_start_a1
    sget-object v0, Lcom/junrar/unpack/vm/RarVM$1;->$SwitchMap$com$junrar$unpack$vm$VMCommands:[I

    sget-object v1, Lcom/junrar/unpack/vm/VMCommands;->VM_ADDB:Lcom/junrar/unpack/vm/VMCommands;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_ad
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a1 .. :try_end_ad} :catch_ad

    :catch_ad
    :try_start_ad
    sget-object v0, Lcom/junrar/unpack/vm/RarVM$1;->$SwitchMap$com$junrar$unpack$vm$VMCommands:[I

    sget-object v1, Lcom/junrar/unpack/vm/VMCommands;->VM_ADDD:Lcom/junrar/unpack/vm/VMCommands;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_b9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_ad .. :try_end_b9} :catch_b9

    :catch_b9
    :try_start_b9
    sget-object v0, Lcom/junrar/unpack/vm/RarVM$1;->$SwitchMap$com$junrar$unpack$vm$VMCommands:[I

    sget-object v1, Lcom/junrar/unpack/vm/VMCommands;->VM_SUB:Lcom/junrar/unpack/vm/VMCommands;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_c5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b9 .. :try_end_c5} :catch_c5

    :catch_c5
    :try_start_c5
    sget-object v0, Lcom/junrar/unpack/vm/RarVM$1;->$SwitchMap$com$junrar$unpack$vm$VMCommands:[I

    sget-object v1, Lcom/junrar/unpack/vm/VMCommands;->VM_SUBB:Lcom/junrar/unpack/vm/VMCommands;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_d1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c5 .. :try_end_d1} :catch_d1

    :catch_d1
    :try_start_d1
    sget-object v0, Lcom/junrar/unpack/vm/RarVM$1;->$SwitchMap$com$junrar$unpack$vm$VMCommands:[I

    sget-object v1, Lcom/junrar/unpack/vm/VMCommands;->VM_SUBD:Lcom/junrar/unpack/vm/VMCommands;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_dd
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d1 .. :try_end_dd} :catch_dd

    :catch_dd
    :try_start_dd
    sget-object v0, Lcom/junrar/unpack/vm/RarVM$1;->$SwitchMap$com$junrar$unpack$vm$VMCommands:[I

    sget-object v1, Lcom/junrar/unpack/vm/VMCommands;->VM_JZ:Lcom/junrar/unpack/vm/VMCommands;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_e9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_dd .. :try_end_e9} :catch_e9

    :catch_e9
    :try_start_e9
    sget-object v0, Lcom/junrar/unpack/vm/RarVM$1;->$SwitchMap$com$junrar$unpack$vm$VMCommands:[I

    sget-object v1, Lcom/junrar/unpack/vm/VMCommands;->VM_JNZ:Lcom/junrar/unpack/vm/VMCommands;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_f5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e9 .. :try_end_f5} :catch_f5

    :catch_f5
    :try_start_f5
    sget-object v0, Lcom/junrar/unpack/vm/RarVM$1;->$SwitchMap$com$junrar$unpack$vm$VMCommands:[I

    sget-object v1, Lcom/junrar/unpack/vm/VMCommands;->VM_INC:Lcom/junrar/unpack/vm/VMCommands;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_101
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f5 .. :try_end_101} :catch_101

    :catch_101
    :try_start_101
    sget-object v0, Lcom/junrar/unpack/vm/RarVM$1;->$SwitchMap$com$junrar$unpack$vm$VMCommands:[I

    sget-object v1, Lcom/junrar/unpack/vm/VMCommands;->VM_INCB:Lcom/junrar/unpack/vm/VMCommands;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x10

    aput v2, v0, v1
    :try_end_10d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_101 .. :try_end_10d} :catch_10d

    :catch_10d
    :try_start_10d
    sget-object v0, Lcom/junrar/unpack/vm/RarVM$1;->$SwitchMap$com$junrar$unpack$vm$VMCommands:[I

    sget-object v1, Lcom/junrar/unpack/vm/VMCommands;->VM_INCD:Lcom/junrar/unpack/vm/VMCommands;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x11

    aput v2, v0, v1
    :try_end_119
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10d .. :try_end_119} :catch_119

    :catch_119
    :try_start_119
    sget-object v0, Lcom/junrar/unpack/vm/RarVM$1;->$SwitchMap$com$junrar$unpack$vm$VMCommands:[I

    sget-object v1, Lcom/junrar/unpack/vm/VMCommands;->VM_DEC:Lcom/junrar/unpack/vm/VMCommands;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x12

    aput v2, v0, v1
    :try_end_125
    .catch Ljava/lang/NoSuchFieldError; {:try_start_119 .. :try_end_125} :catch_125

    :catch_125
    :try_start_125
    sget-object v0, Lcom/junrar/unpack/vm/RarVM$1;->$SwitchMap$com$junrar$unpack$vm$VMCommands:[I

    sget-object v1, Lcom/junrar/unpack/vm/VMCommands;->VM_DECB:Lcom/junrar/unpack/vm/VMCommands;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x13

    aput v2, v0, v1
    :try_end_131
    .catch Ljava/lang/NoSuchFieldError; {:try_start_125 .. :try_end_131} :catch_131

    :catch_131
    :try_start_131
    sget-object v0, Lcom/junrar/unpack/vm/RarVM$1;->$SwitchMap$com$junrar$unpack$vm$VMCommands:[I

    sget-object v1, Lcom/junrar/unpack/vm/VMCommands;->VM_DECD:Lcom/junrar/unpack/vm/VMCommands;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x14

    aput v2, v0, v1
    :try_end_13d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_131 .. :try_end_13d} :catch_13d

    :catch_13d
    :try_start_13d
    sget-object v0, Lcom/junrar/unpack/vm/RarVM$1;->$SwitchMap$com$junrar$unpack$vm$VMCommands:[I

    sget-object v1, Lcom/junrar/unpack/vm/VMCommands;->VM_JMP:Lcom/junrar/unpack/vm/VMCommands;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x15

    aput v2, v0, v1
    :try_end_149
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13d .. :try_end_149} :catch_149

    :catch_149
    :try_start_149
    sget-object v0, Lcom/junrar/unpack/vm/RarVM$1;->$SwitchMap$com$junrar$unpack$vm$VMCommands:[I

    sget-object v1, Lcom/junrar/unpack/vm/VMCommands;->VM_XOR:Lcom/junrar/unpack/vm/VMCommands;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x16

    aput v2, v0, v1
    :try_end_155
    .catch Ljava/lang/NoSuchFieldError; {:try_start_149 .. :try_end_155} :catch_155

    :catch_155
    :try_start_155
    sget-object v0, Lcom/junrar/unpack/vm/RarVM$1;->$SwitchMap$com$junrar$unpack$vm$VMCommands:[I

    sget-object v1, Lcom/junrar/unpack/vm/VMCommands;->VM_AND:Lcom/junrar/unpack/vm/VMCommands;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x17

    aput v2, v0, v1
    :try_end_161
    .catch Ljava/lang/NoSuchFieldError; {:try_start_155 .. :try_end_161} :catch_161

    :catch_161
    :try_start_161
    sget-object v0, Lcom/junrar/unpack/vm/RarVM$1;->$SwitchMap$com$junrar$unpack$vm$VMCommands:[I

    sget-object v1, Lcom/junrar/unpack/vm/VMCommands;->VM_OR:Lcom/junrar/unpack/vm/VMCommands;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x18

    aput v2, v0, v1
    :try_end_16d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_161 .. :try_end_16d} :catch_16d

    :catch_16d
    :try_start_16d
    sget-object v0, Lcom/junrar/unpack/vm/RarVM$1;->$SwitchMap$com$junrar$unpack$vm$VMCommands:[I

    sget-object v1, Lcom/junrar/unpack/vm/VMCommands;->VM_TEST:Lcom/junrar/unpack/vm/VMCommands;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x19

    aput v2, v0, v1
    :try_end_179
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16d .. :try_end_179} :catch_179

    :catch_179
    :try_start_179
    sget-object v0, Lcom/junrar/unpack/vm/RarVM$1;->$SwitchMap$com$junrar$unpack$vm$VMCommands:[I

    sget-object v1, Lcom/junrar/unpack/vm/VMCommands;->VM_JS:Lcom/junrar/unpack/vm/VMCommands;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x1a

    aput v2, v0, v1
    :try_end_185
    .catch Ljava/lang/NoSuchFieldError; {:try_start_179 .. :try_end_185} :catch_185

    :catch_185
    :try_start_185
    sget-object v0, Lcom/junrar/unpack/vm/RarVM$1;->$SwitchMap$com$junrar$unpack$vm$VMCommands:[I

    sget-object v1, Lcom/junrar/unpack/vm/VMCommands;->VM_JNS:Lcom/junrar/unpack/vm/VMCommands;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x1b

    aput v2, v0, v1
    :try_end_191
    .catch Ljava/lang/NoSuchFieldError; {:try_start_185 .. :try_end_191} :catch_191

    :catch_191
    :try_start_191
    sget-object v0, Lcom/junrar/unpack/vm/RarVM$1;->$SwitchMap$com$junrar$unpack$vm$VMCommands:[I

    sget-object v1, Lcom/junrar/unpack/vm/VMCommands;->VM_JB:Lcom/junrar/unpack/vm/VMCommands;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x1c

    aput v2, v0, v1
    :try_end_19d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_191 .. :try_end_19d} :catch_19d

    :catch_19d
    :try_start_19d
    sget-object v0, Lcom/junrar/unpack/vm/RarVM$1;->$SwitchMap$com$junrar$unpack$vm$VMCommands:[I

    sget-object v1, Lcom/junrar/unpack/vm/VMCommands;->VM_JBE:Lcom/junrar/unpack/vm/VMCommands;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x1d

    aput v2, v0, v1
    :try_end_1a9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_19d .. :try_end_1a9} :catch_1a9

    :catch_1a9
    :try_start_1a9
    sget-object v0, Lcom/junrar/unpack/vm/RarVM$1;->$SwitchMap$com$junrar$unpack$vm$VMCommands:[I

    sget-object v1, Lcom/junrar/unpack/vm/VMCommands;->VM_JA:Lcom/junrar/unpack/vm/VMCommands;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x1e

    aput v2, v0, v1
    :try_end_1b5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1a9 .. :try_end_1b5} :catch_1b5

    :catch_1b5
    :try_start_1b5
    sget-object v0, Lcom/junrar/unpack/vm/RarVM$1;->$SwitchMap$com$junrar$unpack$vm$VMCommands:[I

    sget-object v1, Lcom/junrar/unpack/vm/VMCommands;->VM_JAE:Lcom/junrar/unpack/vm/VMCommands;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x1f

    aput v2, v0, v1
    :try_end_1c1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1b5 .. :try_end_1c1} :catch_1c1

    :catch_1c1
    :try_start_1c1
    sget-object v0, Lcom/junrar/unpack/vm/RarVM$1;->$SwitchMap$com$junrar$unpack$vm$VMCommands:[I

    sget-object v1, Lcom/junrar/unpack/vm/VMCommands;->VM_PUSH:Lcom/junrar/unpack/vm/VMCommands;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x20

    aput v2, v0, v1
    :try_end_1cd
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1c1 .. :try_end_1cd} :catch_1cd

    :catch_1cd
    :try_start_1cd
    sget-object v0, Lcom/junrar/unpack/vm/RarVM$1;->$SwitchMap$com$junrar$unpack$vm$VMCommands:[I

    sget-object v1, Lcom/junrar/unpack/vm/VMCommands;->VM_POP:Lcom/junrar/unpack/vm/VMCommands;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x21

    aput v2, v0, v1
    :try_end_1d9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1cd .. :try_end_1d9} :catch_1d9

    :catch_1d9
    :try_start_1d9
    sget-object v0, Lcom/junrar/unpack/vm/RarVM$1;->$SwitchMap$com$junrar$unpack$vm$VMCommands:[I

    sget-object v1, Lcom/junrar/unpack/vm/VMCommands;->VM_CALL:Lcom/junrar/unpack/vm/VMCommands;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x22

    aput v2, v0, v1
    :try_end_1e5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d9 .. :try_end_1e5} :catch_1e5

    :catch_1e5
    :try_start_1e5
    sget-object v0, Lcom/junrar/unpack/vm/RarVM$1;->$SwitchMap$com$junrar$unpack$vm$VMCommands:[I

    sget-object v1, Lcom/junrar/unpack/vm/VMCommands;->VM_NOT:Lcom/junrar/unpack/vm/VMCommands;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x23

    aput v2, v0, v1
    :try_end_1f1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e5 .. :try_end_1f1} :catch_1f1

    :catch_1f1
    :try_start_1f1
    sget-object v0, Lcom/junrar/unpack/vm/RarVM$1;->$SwitchMap$com$junrar$unpack$vm$VMCommands:[I

    sget-object v1, Lcom/junrar/unpack/vm/VMCommands;->VM_SHL:Lcom/junrar/unpack/vm/VMCommands;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x24

    aput v2, v0, v1
    :try_end_1fd
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f1 .. :try_end_1fd} :catch_1fd

    :catch_1fd
    :try_start_1fd
    sget-object v0, Lcom/junrar/unpack/vm/RarVM$1;->$SwitchMap$com$junrar$unpack$vm$VMCommands:[I

    sget-object v1, Lcom/junrar/unpack/vm/VMCommands;->VM_SHR:Lcom/junrar/unpack/vm/VMCommands;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x25

    aput v2, v0, v1
    :try_end_209
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1fd .. :try_end_209} :catch_209

    :catch_209
    :try_start_209
    sget-object v0, Lcom/junrar/unpack/vm/RarVM$1;->$SwitchMap$com$junrar$unpack$vm$VMCommands:[I

    sget-object v1, Lcom/junrar/unpack/vm/VMCommands;->VM_SAR:Lcom/junrar/unpack/vm/VMCommands;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x26

    aput v2, v0, v1
    :try_end_215
    .catch Ljava/lang/NoSuchFieldError; {:try_start_209 .. :try_end_215} :catch_215

    :catch_215
    :try_start_215
    sget-object v0, Lcom/junrar/unpack/vm/RarVM$1;->$SwitchMap$com$junrar$unpack$vm$VMCommands:[I

    sget-object v1, Lcom/junrar/unpack/vm/VMCommands;->VM_NEG:Lcom/junrar/unpack/vm/VMCommands;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x27

    aput v2, v0, v1
    :try_end_221
    .catch Ljava/lang/NoSuchFieldError; {:try_start_215 .. :try_end_221} :catch_221

    :catch_221
    :try_start_221
    sget-object v0, Lcom/junrar/unpack/vm/RarVM$1;->$SwitchMap$com$junrar$unpack$vm$VMCommands:[I

    sget-object v1, Lcom/junrar/unpack/vm/VMCommands;->VM_NEGB:Lcom/junrar/unpack/vm/VMCommands;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x28

    aput v2, v0, v1
    :try_end_22d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_221 .. :try_end_22d} :catch_22d

    :catch_22d
    :try_start_22d
    sget-object v0, Lcom/junrar/unpack/vm/RarVM$1;->$SwitchMap$com$junrar$unpack$vm$VMCommands:[I

    sget-object v1, Lcom/junrar/unpack/vm/VMCommands;->VM_NEGD:Lcom/junrar/unpack/vm/VMCommands;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x29

    aput v2, v0, v1
    :try_end_239
    .catch Ljava/lang/NoSuchFieldError; {:try_start_22d .. :try_end_239} :catch_239

    :catch_239
    :try_start_239
    sget-object v0, Lcom/junrar/unpack/vm/RarVM$1;->$SwitchMap$com$junrar$unpack$vm$VMCommands:[I

    sget-object v1, Lcom/junrar/unpack/vm/VMCommands;->VM_PUSHA:Lcom/junrar/unpack/vm/VMCommands;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x2a

    aput v2, v0, v1
    :try_end_245
    .catch Ljava/lang/NoSuchFieldError; {:try_start_239 .. :try_end_245} :catch_245

    :catch_245
    :try_start_245
    sget-object v0, Lcom/junrar/unpack/vm/RarVM$1;->$SwitchMap$com$junrar$unpack$vm$VMCommands:[I

    sget-object v1, Lcom/junrar/unpack/vm/VMCommands;->VM_POPA:Lcom/junrar/unpack/vm/VMCommands;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x2b

    aput v2, v0, v1
    :try_end_251
    .catch Ljava/lang/NoSuchFieldError; {:try_start_245 .. :try_end_251} :catch_251

    :catch_251
    :try_start_251
    sget-object v0, Lcom/junrar/unpack/vm/RarVM$1;->$SwitchMap$com$junrar$unpack$vm$VMCommands:[I

    sget-object v1, Lcom/junrar/unpack/vm/VMCommands;->VM_PUSHF:Lcom/junrar/unpack/vm/VMCommands;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x2c

    aput v2, v0, v1
    :try_end_25d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_251 .. :try_end_25d} :catch_25d

    :catch_25d
    :try_start_25d
    sget-object v0, Lcom/junrar/unpack/vm/RarVM$1;->$SwitchMap$com$junrar$unpack$vm$VMCommands:[I

    sget-object v1, Lcom/junrar/unpack/vm/VMCommands;->VM_POPF:Lcom/junrar/unpack/vm/VMCommands;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x2d

    aput v2, v0, v1
    :try_end_269
    .catch Ljava/lang/NoSuchFieldError; {:try_start_25d .. :try_end_269} :catch_269

    :catch_269
    :try_start_269
    sget-object v0, Lcom/junrar/unpack/vm/RarVM$1;->$SwitchMap$com$junrar$unpack$vm$VMCommands:[I

    sget-object v1, Lcom/junrar/unpack/vm/VMCommands;->VM_MOVZX:Lcom/junrar/unpack/vm/VMCommands;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x2e

    aput v2, v0, v1
    :try_end_275
    .catch Ljava/lang/NoSuchFieldError; {:try_start_269 .. :try_end_275} :catch_275

    :catch_275
    :try_start_275
    sget-object v0, Lcom/junrar/unpack/vm/RarVM$1;->$SwitchMap$com$junrar$unpack$vm$VMCommands:[I

    sget-object v1, Lcom/junrar/unpack/vm/VMCommands;->VM_MOVSX:Lcom/junrar/unpack/vm/VMCommands;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x2f

    aput v2, v0, v1
    :try_end_281
    .catch Ljava/lang/NoSuchFieldError; {:try_start_275 .. :try_end_281} :catch_281

    :catch_281
    :try_start_281
    sget-object v0, Lcom/junrar/unpack/vm/RarVM$1;->$SwitchMap$com$junrar$unpack$vm$VMCommands:[I

    sget-object v1, Lcom/junrar/unpack/vm/VMCommands;->VM_XCHG:Lcom/junrar/unpack/vm/VMCommands;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x30

    aput v2, v0, v1
    :try_end_28d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_281 .. :try_end_28d} :catch_28d

    :catch_28d
    :try_start_28d
    sget-object v0, Lcom/junrar/unpack/vm/RarVM$1;->$SwitchMap$com$junrar$unpack$vm$VMCommands:[I

    sget-object v1, Lcom/junrar/unpack/vm/VMCommands;->VM_MUL:Lcom/junrar/unpack/vm/VMCommands;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x31

    aput v2, v0, v1
    :try_end_299
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28d .. :try_end_299} :catch_299

    :catch_299
    :try_start_299
    sget-object v0, Lcom/junrar/unpack/vm/RarVM$1;->$SwitchMap$com$junrar$unpack$vm$VMCommands:[I

    sget-object v1, Lcom/junrar/unpack/vm/VMCommands;->VM_DIV:Lcom/junrar/unpack/vm/VMCommands;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x32

    aput v2, v0, v1
    :try_end_2a5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_299 .. :try_end_2a5} :catch_2a5

    :catch_2a5
    :try_start_2a5
    sget-object v0, Lcom/junrar/unpack/vm/RarVM$1;->$SwitchMap$com$junrar$unpack$vm$VMCommands:[I

    sget-object v1, Lcom/junrar/unpack/vm/VMCommands;->VM_ADC:Lcom/junrar/unpack/vm/VMCommands;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x33

    aput v2, v0, v1
    :try_end_2b1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2a5 .. :try_end_2b1} :catch_2b1

    :catch_2b1
    :try_start_2b1
    sget-object v0, Lcom/junrar/unpack/vm/RarVM$1;->$SwitchMap$com$junrar$unpack$vm$VMCommands:[I

    sget-object v1, Lcom/junrar/unpack/vm/VMCommands;->VM_SBB:Lcom/junrar/unpack/vm/VMCommands;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x34

    aput v2, v0, v1
    :try_end_2bd
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2b1 .. :try_end_2bd} :catch_2bd

    :catch_2bd
    :try_start_2bd
    sget-object v0, Lcom/junrar/unpack/vm/RarVM$1;->$SwitchMap$com$junrar$unpack$vm$VMCommands:[I

    sget-object v1, Lcom/junrar/unpack/vm/VMCommands;->VM_RET:Lcom/junrar/unpack/vm/VMCommands;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x35

    aput v2, v0, v1
    :try_end_2c9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2bd .. :try_end_2c9} :catch_2c9

    :catch_2c9
    :try_start_2c9
    sget-object v0, Lcom/junrar/unpack/vm/RarVM$1;->$SwitchMap$com$junrar$unpack$vm$VMCommands:[I

    sget-object v1, Lcom/junrar/unpack/vm/VMCommands;->VM_STANDARD:Lcom/junrar/unpack/vm/VMCommands;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x36

    aput v2, v0, v1
    :try_end_2d5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2c9 .. :try_end_2d5} :catch_2d5

    :catch_2d5
    :try_start_2d5
    sget-object v0, Lcom/junrar/unpack/vm/RarVM$1;->$SwitchMap$com$junrar$unpack$vm$VMCommands:[I

    sget-object v1, Lcom/junrar/unpack/vm/VMCommands;->VM_PRINT:Lcom/junrar/unpack/vm/VMCommands;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x37

    aput v2, v0, v1
    :try_end_2e1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2d5 .. :try_end_2e1} :catch_2e1

    :catch_2e1
    return-void
.end method
