.class synthetic Lcom/junrar/Archive$1;
.super Ljava/lang/Object;
.source "Archive.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/junrar/Archive;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation


# static fields
.field public static final synthetic $SwitchMap$com$junrar$rarfile$SubBlockHeaderType:[I

.field public static final synthetic $SwitchMap$com$junrar$rarfile$UnrarHeadertype:[I


# direct methods
.method public static constructor <clinit>()V
    .registers 9

    invoke-static {}, Lcom/junrar/rarfile/UnrarHeadertype;->values()[Lcom/junrar/rarfile/UnrarHeadertype;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/junrar/Archive$1;->$SwitchMap$com$junrar$rarfile$UnrarHeadertype:[I

    const/4 v1, 0x1

    :try_start_a
    sget-object v2, Lcom/junrar/rarfile/UnrarHeadertype;->NewSubHeader:Lcom/junrar/rarfile/UnrarHeadertype;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_12} :catch_12

    :catch_12
    const/4 v0, 0x2

    :try_start_13
    sget-object v2, Lcom/junrar/Archive$1;->$SwitchMap$com$junrar$rarfile$UnrarHeadertype:[I

    sget-object v3, Lcom/junrar/rarfile/UnrarHeadertype;->FileHeader:Lcom/junrar/rarfile/UnrarHeadertype;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_1d} :catch_1d

    :catch_1d
    const/4 v2, 0x3

    :try_start_1e
    sget-object v3, Lcom/junrar/Archive$1;->$SwitchMap$com$junrar$rarfile$UnrarHeadertype:[I

    sget-object v4, Lcom/junrar/rarfile/UnrarHeadertype;->ProtectHeader:Lcom/junrar/rarfile/UnrarHeadertype;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e .. :try_end_28} :catch_28

    :catch_28
    const/4 v3, 0x4

    :try_start_29
    sget-object v4, Lcom/junrar/Archive$1;->$SwitchMap$com$junrar$rarfile$UnrarHeadertype:[I

    sget-object v5, Lcom/junrar/rarfile/UnrarHeadertype;->SubHeader:Lcom/junrar/rarfile/UnrarHeadertype;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v3, v4, v5
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_29 .. :try_end_33} :catch_33

    :catch_33
    const/4 v4, 0x5

    :try_start_34
    sget-object v5, Lcom/junrar/Archive$1;->$SwitchMap$com$junrar$rarfile$UnrarHeadertype:[I

    sget-object v6, Lcom/junrar/rarfile/UnrarHeadertype;->MarkHeader:Lcom/junrar/rarfile/UnrarHeadertype;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aput v4, v5, v6
    :try_end_3e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_34 .. :try_end_3e} :catch_3e

    :catch_3e
    const/4 v5, 0x6

    :try_start_3f
    sget-object v6, Lcom/junrar/Archive$1;->$SwitchMap$com$junrar$rarfile$UnrarHeadertype:[I

    sget-object v7, Lcom/junrar/rarfile/UnrarHeadertype;->MainHeader:Lcom/junrar/rarfile/UnrarHeadertype;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aput v5, v6, v7
    :try_end_49
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3f .. :try_end_49} :catch_49

    :catch_49
    :try_start_49
    sget-object v6, Lcom/junrar/Archive$1;->$SwitchMap$com$junrar$rarfile$UnrarHeadertype:[I

    sget-object v7, Lcom/junrar/rarfile/UnrarHeadertype;->SignHeader:Lcom/junrar/rarfile/UnrarHeadertype;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    const/4 v8, 0x7

    aput v8, v6, v7
    :try_end_54
    .catch Ljava/lang/NoSuchFieldError; {:try_start_49 .. :try_end_54} :catch_54

    :catch_54
    :try_start_54
    sget-object v6, Lcom/junrar/Archive$1;->$SwitchMap$com$junrar$rarfile$UnrarHeadertype:[I

    sget-object v7, Lcom/junrar/rarfile/UnrarHeadertype;->AvHeader:Lcom/junrar/rarfile/UnrarHeadertype;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    const/16 v8, 0x8

    aput v8, v6, v7
    :try_end_60
    .catch Ljava/lang/NoSuchFieldError; {:try_start_54 .. :try_end_60} :catch_60

    :catch_60
    :try_start_60
    sget-object v6, Lcom/junrar/Archive$1;->$SwitchMap$com$junrar$rarfile$UnrarHeadertype:[I

    sget-object v7, Lcom/junrar/rarfile/UnrarHeadertype;->CommHeader:Lcom/junrar/rarfile/UnrarHeadertype;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    const/16 v8, 0x9

    aput v8, v6, v7
    :try_end_6c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_60 .. :try_end_6c} :catch_6c

    :catch_6c
    :try_start_6c
    sget-object v6, Lcom/junrar/Archive$1;->$SwitchMap$com$junrar$rarfile$UnrarHeadertype:[I

    sget-object v7, Lcom/junrar/rarfile/UnrarHeadertype;->EndArcHeader:Lcom/junrar/rarfile/UnrarHeadertype;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    const/16 v8, 0xa

    aput v8, v6, v7
    :try_end_78
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6c .. :try_end_78} :catch_78

    :catch_78
    invoke-static {}, Lcom/junrar/rarfile/SubBlockHeaderType;->values()[Lcom/junrar/rarfile/SubBlockHeaderType;

    move-result-object v6

    array-length v6, v6

    new-array v6, v6, [I

    sput-object v6, Lcom/junrar/Archive$1;->$SwitchMap$com$junrar$rarfile$SubBlockHeaderType:[I

    :try_start_81
    sget-object v7, Lcom/junrar/rarfile/SubBlockHeaderType;->MAC_HEAD:Lcom/junrar/rarfile/SubBlockHeaderType;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aput v1, v6, v7
    :try_end_89
    .catch Ljava/lang/NoSuchFieldError; {:try_start_81 .. :try_end_89} :catch_89

    :catch_89
    :try_start_89
    sget-object v1, Lcom/junrar/Archive$1;->$SwitchMap$com$junrar$rarfile$SubBlockHeaderType:[I

    sget-object v6, Lcom/junrar/rarfile/SubBlockHeaderType;->BEEA_HEAD:Lcom/junrar/rarfile/SubBlockHeaderType;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aput v0, v1, v6
    :try_end_93
    .catch Ljava/lang/NoSuchFieldError; {:try_start_89 .. :try_end_93} :catch_93

    :catch_93
    :try_start_93
    sget-object v0, Lcom/junrar/Archive$1;->$SwitchMap$com$junrar$rarfile$SubBlockHeaderType:[I

    sget-object v1, Lcom/junrar/rarfile/SubBlockHeaderType;->EA_HEAD:Lcom/junrar/rarfile/SubBlockHeaderType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_9d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_93 .. :try_end_9d} :catch_9d

    :catch_9d
    :try_start_9d
    sget-object v0, Lcom/junrar/Archive$1;->$SwitchMap$com$junrar$rarfile$SubBlockHeaderType:[I

    sget-object v1, Lcom/junrar/rarfile/SubBlockHeaderType;->NTACL_HEAD:Lcom/junrar/rarfile/SubBlockHeaderType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v3, v0, v1
    :try_end_a7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9d .. :try_end_a7} :catch_a7

    :catch_a7
    :try_start_a7
    sget-object v0, Lcom/junrar/Archive$1;->$SwitchMap$com$junrar$rarfile$SubBlockHeaderType:[I

    sget-object v1, Lcom/junrar/rarfile/SubBlockHeaderType;->STREAM_HEAD:Lcom/junrar/rarfile/SubBlockHeaderType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v4, v0, v1
    :try_end_b1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a7 .. :try_end_b1} :catch_b1

    :catch_b1
    :try_start_b1
    sget-object v0, Lcom/junrar/Archive$1;->$SwitchMap$com$junrar$rarfile$SubBlockHeaderType:[I

    sget-object v1, Lcom/junrar/rarfile/SubBlockHeaderType;->UO_HEAD:Lcom/junrar/rarfile/SubBlockHeaderType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v5, v0, v1
    :try_end_bb
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b1 .. :try_end_bb} :catch_bb

    :catch_bb
    return-void
.end method
