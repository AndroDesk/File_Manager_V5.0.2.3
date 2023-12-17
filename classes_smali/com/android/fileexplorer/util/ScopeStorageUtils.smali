.class public Lcom/android/fileexplorer/util/ScopeStorageUtils;
.super Ljava/lang/Object;
.source "ScopeStorageUtils.java"


# static fields
.field private static sBlackPath:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    sput-object v0, Lcom/android/fileexplorer/util/ScopeStorageUtils;->sBlackPath:Ljava/util/List;

    .line 8
    const-string v1, "/Android/data"

    .line 10
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13
    sget-object v0, Lcom/android/fileexplorer/util/ScopeStorageUtils;->sBlackPath:Ljava/util/List;

    .line 15
    const-string v1, "/Android/obb"

    .line 17
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 20
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method private static getBlackList()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/android/fileexplorer/util/ScopeStorageUtils;->sBlackPath:Ljava/util/List;

    .line 3
    return-object v0
.end method

.method public static isLimit(Ljava/lang/String;)Z
    .registers 9

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/util/AppUtils;->isAndroid30AndLater()Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_86

    .line 8
    invoke-static {}, Lcom/android/fileexplorer/model/StorageHelper;->getExternalStorageDirectory()[Ljava/lang/String;

    .line 11
    move-result-object v0

    .line 12
    array-length v2, v0

    .line 13
    if-nez v2, :cond_f

    .line 15
    return v1

    .line 16
    :cond_f
    new-instance v2, Ljava/util/ArrayList;

    .line 18
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 21
    move-result-object v0

    .line 22
    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 25
    invoke-static {}, Lcom/android/fileexplorer/util/ExternalFilesHelper;->getInstance()Lcom/android/fileexplorer/util/ExternalFilesHelper;

    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {v0}, Lcom/android/fileexplorer/util/ExternalFilesHelper;->hasSD()Z

    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_2d

    .line 35
    invoke-static {}, Lcom/android/fileexplorer/util/ExternalFilesHelper;->getInstance()Lcom/android/fileexplorer/util/ExternalFilesHelper;

    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {v0}, Lcom/android/fileexplorer/util/ExternalFilesHelper;->getSDRootPath()Ljava/lang/String;

    .line 42
    move-result-object v0

    .line 43
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 46
    :cond_2d
    new-instance v0, Ljava/util/ArrayList;

    .line 48
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 51
    invoke-static {}, Lcom/android/fileexplorer/util/ScopeStorageUtils;->getBlackList()Ljava/util/List;

    .line 54
    move-result-object v3

    .line 55
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 58
    move-result-object v3

    .line 59
    :cond_3a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 62
    move-result v4

    .line 63
    if-eqz v4, :cond_69

    .line 65
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 68
    move-result-object v4

    .line 69
    check-cast v4, Ljava/lang/String;

    .line 71
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 74
    move-result-object v5

    .line 75
    :goto_4a
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 78
    move-result v6

    .line 79
    if-eqz v6, :cond_3a

    .line 81
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 84
    move-result-object v6

    .line 85
    check-cast v6, Ljava/lang/String;

    .line 87
    new-instance v7, Ljava/lang/StringBuilder;

    .line 89
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 92
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 101
    move-result-object v6

    .line 102
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 105
    goto :goto_4a

    .line 106
    :cond_69
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 109
    move-result-object v0

    .line 110
    :cond_6d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 113
    move-result v2

    .line 114
    if-eqz v2, :cond_86

    .line 116
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 119
    move-result-object v2

    .line 120
    check-cast v2, Ljava/lang/String;

    .line 122
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 125
    move-result v3

    .line 126
    if-nez v3, :cond_6d

    .line 128
    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 131
    move-result v2

    .line 132
    if-eqz v2, :cond_6d

    .line 134
    const/4 v1, 0x1

    .line 135
    :cond_86
    return v1
.end method

.method public static openDocumentUi(Landroid/content/Context;)V
    .registers 4

    .line 1
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    .line 3
    const-string v1, "android.intent.action.VIEW"

    .line 5
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 8
    const-string v1, "content://com.android.externalstorage.documents/root/primary"

    .line 10
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 17
    const-string v2, "vnd.android.document/root"

    .line 19
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 22
    const-string v1, "com.google.android.documentsui"

    .line 24
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 27
    instance-of v1, p0, Landroid/app/Activity;

    .line 29
    if-nez v1, :cond_23

    .line 31
    const/high16 v1, 0x10000000

    .line 33
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 36
    :cond_23
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_26} :catch_27

    .line 39
    goto :goto_3e

    .line 40
    :catch_27
    move-exception p0

    .line 41
    const-string v0, "error:"

    .line 43
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    move-result-object v0

    .line 47
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 50
    move-result-object p0

    .line 51
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    move-result-object p0

    .line 58
    const-string v0, "openDocumentUi"

    .line 60
    invoke-static {v0, p0}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    :goto_3e
    return-void
.end method
