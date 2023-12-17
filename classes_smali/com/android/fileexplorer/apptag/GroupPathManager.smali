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

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/fileexplorer/apptag/GroupPathManager;->sSpecialPathNames:Ljava/util/HashMap;

    const-string v0, "/MiShare"

    const v1, 0x7f11022b

    invoke-static {v0, v1}, Lcom/android/fileexplorer/apptag/GroupPathManager;->addPathNames(Ljava/lang/String;I)V

    const-string v0, "/Download/email"

    const v1, 0x7f11033e

    invoke-static {v0, v1}, Lcom/android/fileexplorer/apptag/GroupPathManager;->addPathNames(Ljava/lang/String;I)V

    sget-object v0, Lcom/android/fileexplorer/apptag/GroupPathManager$ScanParentDir;->ZSXQ_PARENT_PATH:Ljava/lang/String;

    const v1, 0x7f110363

    invoke-static {v0, v1}, Lcom/android/fileexplorer/apptag/GroupPathManager;->addPathNames(Ljava/lang/String;I)V

    const-string v0, "zsxq"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/apptag/GroupPathManager;->addPathNames(Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addPathNames(Ljava/lang/String;I)V
    .registers 3

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_15

    if-eqz p1, :cond_15

    sget-object v0, Lcom/android/fileexplorer/apptag/GroupPathManager;->sSpecialPathNames:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1}, Lcom/android/fileexplorer/util/ResUtil;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_15
    return-void
.end method

.method public static getNameByPath(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, 0x0

    return-object p0

    :cond_8
    sget-object v0, Lcom/android/fileexplorer/apptag/GroupPathManager;->sSpecialPathNames:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method
