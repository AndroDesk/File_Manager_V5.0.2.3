.class public Lcom/android/fileexplorer/util/DocHelper;
.super Ljava/lang/Object;
.source "DocHelper.java"


# static fields
.field private static sDocExtGridIcons:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static sDocExtGridIconsMirror:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static sDocExtGridTexts:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 14

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/fileexplorer/util/DocHelper;->sDocExtGridIcons:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/fileexplorer/util/DocHelper;->sDocExtGridIconsMirror:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/fileexplorer/util/DocHelper;->sDocExtGridTexts:Ljava/util/HashMap;

    const-string v0, "doc"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f080198

    invoke-static {v1, v2}, Lcom/android/fileexplorer/util/DocHelper;->addItem([Ljava/lang/String;I)V

    const-string v1, "docx"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/android/fileexplorer/util/DocHelper;->addItem([Ljava/lang/String;I)V

    const-string v2, "ppt"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f08018a

    invoke-static {v3, v4}, Lcom/android/fileexplorer/util/DocHelper;->addItem([Ljava/lang/String;I)V

    const-string v3, "pptx"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v4}, Lcom/android/fileexplorer/util/DocHelper;->addItem([Ljava/lang/String;I)V

    const-string v4, "xls"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f08019f

    invoke-static {v5, v6}, Lcom/android/fileexplorer/util/DocHelper;->addItem([Ljava/lang/String;I)V

    const-string v5, "xlsx"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v6}, Lcom/android/fileexplorer/util/DocHelper;->addItem([Ljava/lang/String;I)V

    const-string v6, "epub"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v7

    const v8, 0x7f08016d

    invoke-static {v7, v8}, Lcom/android/fileexplorer/util/DocHelper;->addItem([Ljava/lang/String;I)V

    const-string v7, "wps"

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v8

    const v9, 0x7f08019b

    invoke-static {v8, v9}, Lcom/android/fileexplorer/util/DocHelper;->addItem([Ljava/lang/String;I)V

    const-string v8, "txt"

    filled-new-array {v8}, [Ljava/lang/String;

    move-result-object v9

    const v10, 0x7f08018f

    invoke-static {v9, v10}, Lcom/android/fileexplorer/util/DocHelper;->addItem([Ljava/lang/String;I)V

    const-string v9, "pdf"

    filled-new-array {v9}, [Ljava/lang/String;

    move-result-object v10

    const v11, 0x7f080183

    invoke-static {v10, v11}, Lcom/android/fileexplorer/util/DocHelper;->addItem([Ljava/lang/String;I)V

    const-string v10, "md"

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v11

    const v12, 0x7f080243

    invoke-static {v11, v12}, Lcom/android/fileexplorer/util/DocHelper;->addItem([Ljava/lang/String;I)V

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v11

    const v13, 0x7f080134

    invoke-static {v11, v13}, Lcom/android/fileexplorer/util/DocHelper;->addItemMirror([Ljava/lang/String;I)V

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v11

    const v13, 0x7f080136

    invoke-static {v11, v13}, Lcom/android/fileexplorer/util/DocHelper;->addItemMirror([Ljava/lang/String;I)V

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v11

    const v13, 0x7f08013b

    invoke-static {v11, v13}, Lcom/android/fileexplorer/util/DocHelper;->addItemMirror([Ljava/lang/String;I)V

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v11

    invoke-static {v11, v13}, Lcom/android/fileexplorer/util/DocHelper;->addItemMirror([Ljava/lang/String;I)V

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v11

    const v13, 0x7f080142

    invoke-static {v11, v13}, Lcom/android/fileexplorer/util/DocHelper;->addItemMirror([Ljava/lang/String;I)V

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v11

    const v13, 0x7f080144

    invoke-static {v11, v13}, Lcom/android/fileexplorer/util/DocHelper;->addItemMirror([Ljava/lang/String;I)V

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v11

    const v13, 0x7f080132

    invoke-static {v11, v13}, Lcom/android/fileexplorer/util/DocHelper;->addItemMirror([Ljava/lang/String;I)V

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v11

    const v13, 0x7f080140

    invoke-static {v11, v13}, Lcom/android/fileexplorer/util/DocHelper;->addItemMirror([Ljava/lang/String;I)V

    filled-new-array {v8}, [Ljava/lang/String;

    move-result-object v11

    const v13, 0x7f08013e

    invoke-static {v11, v13}, Lcom/android/fileexplorer/util/DocHelper;->addItemMirror([Ljava/lang/String;I)V

    filled-new-array {v9}, [Ljava/lang/String;

    move-result-object v11

    const v13, 0x7f080138

    invoke-static {v11, v13}, Lcom/android/fileexplorer/util/DocHelper;->addItemMirror([Ljava/lang/String;I)V

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v12}, Lcom/android/fileexplorer/util/DocHelper;->addItemMirror([Ljava/lang/String;I)V

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f110136

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DocHelper;->addTextItem([Ljava/lang/String;I)V

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f110134

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DocHelper;->addTextItem([Ljava/lang/String;I)V

    filled-new-array {v4, v5}, [Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f110138

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DocHelper;->addTextItem([Ljava/lang/String;I)V

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f110137

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DocHelper;->addTextItem([Ljava/lang/String;I)V

    filled-new-array {v8}, [Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f110135

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DocHelper;->addTextItem([Ljava/lang/String;I)V

    filled-new-array {v9}, [Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f110133

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DocHelper;->addTextItem([Ljava/lang/String;I)V

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f110132

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DocHelper;->addTextItem([Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addItem([Ljava/lang/String;I)V
    .registers 7

    if-eqz p0, :cond_18

    array-length v0, p0

    const/4 v1, 0x0

    :goto_4
    if-ge v1, v0, :cond_18

    aget-object v2, p0, v1

    sget-object v3, Lcom/android/fileexplorer/util/DocHelper;->sDocExtGridIcons:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_18
    return-void
.end method

.method private static addItemMirror([Ljava/lang/String;I)V
    .registers 7

    if-eqz p0, :cond_18

    array-length v0, p0

    const/4 v1, 0x0

    :goto_4
    if-ge v1, v0, :cond_18

    aget-object v2, p0, v1

    sget-object v3, Lcom/android/fileexplorer/util/DocHelper;->sDocExtGridIconsMirror:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_18
    return-void
.end method

.method private static addTextItem([Ljava/lang/String;I)V
    .registers 7

    if-eqz p0, :cond_18

    array-length v0, p0

    const/4 v1, 0x0

    :goto_4
    if-ge v1, v0, :cond_18

    aget-object v2, p0, v1

    sget-object v3, Lcom/android/fileexplorer/util/DocHelper;->sDocExtGridTexts:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_18
    return-void
.end method

.method public static getDocGridDefaultIcon(Ljava/lang/String;)I
    .registers 2

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, 0x0

    return p0

    :cond_8
    sget-object v0, Lcom/android/fileexplorer/util/DocHelper;->sDocExtGridIcons:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-eqz p0, :cond_1b

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_1b
    const p0, 0x7f080131

    return p0
.end method

.method public static getDocGridDefaultIconMirror(Ljava/lang/String;)I
    .registers 2

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, 0x0

    return p0

    :cond_8
    sget-object v0, Lcom/android/fileexplorer/util/DocHelper;->sDocExtGridIconsMirror:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-eqz p0, :cond_1b

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_1b
    const p0, 0x7f080132

    return p0
.end method

.method public static getDocSignText(Ljava/lang/String;)I
    .registers 3

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    :cond_8
    sget-object v0, Lcom/android/fileexplorer/util/DocHelper;->sDocExtGridTexts:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-nez p0, :cond_17

    goto :goto_1b

    :cond_17
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_1b
    return v1
.end method
