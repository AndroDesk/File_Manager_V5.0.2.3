.class public Lcom/android/fileexplorer/apptag/GroupPathManager;
.super Ljava/lang/Object;
.source "GroupPathManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/fileexplorer/apptag/GroupPathManager$SkipPath;,
        Lcom/android/fileexplorer/apptag/GroupPathManager$TopPath;,
        Lcom/android/fileexplorer/apptag/GroupPathManager$FullPath;,
        Lcom/android/fileexplorer/apptag/GroupPathManager$BlackFileConstants;,
        Lcom/android/fileexplorer/apptag/GroupPathManager$ScanParentDir;,
        Lcom/android/fileexplorer/apptag/GroupPathManager$ScanConstants;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "GroupPathManager"

.field private static final sSpecialPathNames:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 6
    sput-object v0, Lcom/android/fileexplorer/apptag/GroupPathManager;->sSpecialPathNames:Ljava/util/HashMap;

    .line 8
    const-string v0, "/MiShare"

    .line 10
    const v1, 0x7f11022b

    .line 13
    invoke-static {v0, v1}, Lcom/android/fileexplorer/apptag/GroupPathManager;->addPathNames(Ljava/lang/String;I)V

    .line 16
    const-string v0, "/Download/email"

    .line 18
    const v1, 0x7f11033e

    .line 21
    invoke-static {v0, v1}, Lcom/android/fileexplorer/apptag/GroupPathManager;->addPathNames(Ljava/lang/String;I)V

    .line 24
    sget-object v0, Lcom/android/fileexplorer/apptag/GroupPathManager$ScanParentDir;->ZSXQ_PARENT_PATH:Ljava/lang/String;

    .line 26
    const v1, 0x7f110363

    .line 29
    invoke-static {v0, v1}, Lcom/android/fileexplorer/apptag/GroupPathManager;->addPathNames(Ljava/lang/String;I)V

    .line 32
    const-string v0, "zsxq"

    .line 34
    invoke-static {v0, v1}, Lcom/android/fileexplorer/apptag/GroupPathManager;->addPathNames(Ljava/lang/String;I)V

    .line 37
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addPathNames(Ljava/lang/String;I)V
    .registers 3

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_15

    .line 7
    if-eqz p1, :cond_15

    .line 9
    sget-object v0, Lcom/android/fileexplorer/apptag/GroupPathManager;->sSpecialPathNames:Ljava/util/HashMap;

    .line 11
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 14
    move-result-object p0

    .line 15
    invoke-static {p1}, Lcom/android/fileexplorer/util/ResUtil;->getString(I)Ljava/lang/String;

    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    :cond_15
    return-void
.end method

.method public static getNameByPath(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_8

    .line 7
    const/4 p0, 0x0

    .line 8
    return-object p0

    .line 9
    :cond_8
    sget-object v0, Lcom/android/fileexplorer/apptag/GroupPathManager;->sSpecialPathNames:Ljava/util/HashMap;

    .line 11
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 14
    move-result-object p0

    .line 15
    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    move-result-object p0

    .line 19
    check-cast p0, Ljava/lang/String;

    .line 21
    return-object p0
.end method
