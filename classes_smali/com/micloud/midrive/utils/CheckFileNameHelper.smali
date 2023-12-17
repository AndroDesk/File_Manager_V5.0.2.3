.class public Lcom/micloud/midrive/utils/CheckFileNameHelper;
.super Ljava/lang/Object;
.source "CheckFileNameHelper.java"


# static fields
.field public static final MAX_FAT32_NAME_LENGTH:I = 0xa0

.field private static isFat32Char:[Z


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    const/16 v0, 0x80

    new-array v0, v0, [Z

    sput-object v0, Lcom/micloud/midrive/utils/CheckFileNameHelper;->isFat32Char:[Z

    const/16 v0, 0x30

    :goto_8
    const/16 v1, 0x39

    const/4 v2, 0x1

    if-gt v0, v1, :cond_15

    sget-object v1, Lcom/micloud/midrive/utils/CheckFileNameHelper;->isFat32Char:[Z

    aput-boolean v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    int-to-char v0, v0

    goto :goto_8

    :cond_15
    const/16 v0, 0x41

    :goto_17
    const/16 v1, 0x5a

    if-gt v0, v1, :cond_23

    sget-object v1, Lcom/micloud/midrive/utils/CheckFileNameHelper;->isFat32Char:[Z

    aput-boolean v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    int-to-char v0, v0

    goto :goto_17

    :cond_23
    const/16 v0, 0x61

    :goto_25
    const/16 v1, 0x7a

    if-gt v0, v1, :cond_31

    sget-object v1, Lcom/micloud/midrive/utils/CheckFileNameHelper;->isFat32Char:[Z

    aput-boolean v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    int-to-char v0, v0

    goto :goto_25

    :cond_31
    sget-object v0, Lcom/micloud/midrive/utils/CheckFileNameHelper;->isFat32Char:[Z

    const/16 v1, 0x24

    aput-boolean v2, v0, v1

    const/16 v1, 0x25

    aput-boolean v2, v0, v1

    const/16 v1, 0x27

    aput-boolean v2, v0, v1

    const/16 v1, 0x2d

    aput-boolean v2, v0, v1

    const/16 v1, 0x5f

    aput-boolean v2, v0, v1

    const/16 v1, 0x40

    aput-boolean v2, v0, v1

    const/16 v1, 0x7e

    aput-boolean v2, v0, v1

    const/16 v1, 0x60

    aput-boolean v2, v0, v1

    const/16 v1, 0x21

    aput-boolean v2, v0, v1

    const/16 v1, 0x28

    aput-boolean v2, v0, v1

    const/16 v1, 0x29

    aput-boolean v2, v0, v1

    const/16 v1, 0x7b

    aput-boolean v2, v0, v1

    const/16 v1, 0x7d

    aput-boolean v2, v0, v1

    const/16 v1, 0x5e

    aput-boolean v2, v0, v1

    const/16 v1, 0x23

    aput-boolean v2, v0, v1

    const/16 v1, 0x26

    aput-boolean v2, v0, v1

    const/16 v1, 0x2e

    aput-boolean v2, v0, v1

    const/16 v1, 0x2b

    aput-boolean v2, v0, v1

    const/16 v1, 0x2c

    aput-boolean v2, v0, v1

    const/16 v1, 0x3b

    aput-boolean v2, v0, v1

    const/16 v1, 0x3d

    aput-boolean v2, v0, v1

    const/16 v1, 0x5b

    aput-boolean v2, v0, v1

    const/16 v1, 0x5d

    aput-boolean v2, v0, v1

    const/16 v1, 0x20

    aput-boolean v2, v0, v1

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isStringAllFat32Chars(Ljava/lang/String;)Z
    .registers 7

    invoke-static {p0}, Lcom/micloud/midrive/utils/ArgumentCheckUtils;->checkNotEmpty(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_a
    if-ge v2, v0, :cond_1b

    aget-char v3, p0, v2

    sget-object v4, Lcom/micloud/midrive/utils/CheckFileNameHelper;->isFat32Char:[Z

    array-length v5, v4

    if-ge v3, v5, :cond_18

    aget-boolean v3, v4, v3

    if-nez v3, :cond_18

    return v1

    :cond_18
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_1b
    const/4 p0, 0x1

    return p0
.end method

.method public static validateFilename(Ljava/lang/String;)V
    .registers 4

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/16 v1, 0x2712

    if-nez v0, :cond_59

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4b

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0xa0

    if-gt v0, v2, :cond_3f

    const-string v0, "^\\.*$"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    const-string v2, "invalid name: "

    if-nez v0, :cond_35

    invoke-static {p0}, Lcom/micloud/midrive/utils/CheckFileNameHelper;->isStringAllFat32Chars(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2b

    return-void

    :cond_2b
    invoke-static {v2, p0}, La/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Lcom/micloud/midrive/task/exception/UploadCheckParamException;

    invoke-direct {v0, v1, p0}, Lcom/micloud/midrive/task/exception/UploadCheckParamException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_35
    invoke-static {v2, p0}, La/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Lcom/micloud/midrive/task/exception/UploadCheckParamException;

    invoke-direct {v0, v1, p0}, Lcom/micloud/midrive/task/exception/UploadCheckParamException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_3f
    const-string v0, "long name: "

    invoke-static {v0, p0}, La/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Lcom/micloud/midrive/task/exception/UploadCheckParamException;

    invoke-direct {v0, v1, p0}, Lcom/micloud/midrive/task/exception/UploadCheckParamException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_4b
    const-string v0, "name with leading/trailing spaces: \'"

    const-string v2, "\'"

    invoke-static {v0, p0, v2}, La/a;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Lcom/micloud/midrive/task/exception/UploadCheckParamException;

    invoke-direct {v0, v1, p0}, Lcom/micloud/midrive/task/exception/UploadCheckParamException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_59
    new-instance p0, Lcom/micloud/midrive/task/exception/UploadCheckParamException;

    const-string v0, "empty name"

    invoke-direct {p0, v1, v0}, Lcom/micloud/midrive/task/exception/UploadCheckParamException;-><init>(ILjava/lang/String;)V

    throw p0
.end method
