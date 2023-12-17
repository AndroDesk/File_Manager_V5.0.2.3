.class Lcom/android/fileexplorer/view/EmptyView$MamlViewFactory;
.super Ljava/lang/Object;
.source "EmptyView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/fileexplorer/view/EmptyView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MamlViewFactory"
.end annotation


# static fields
.field public static final TYPE_FOLDER:I = 0x0

.field public static final TYPE_INFO:I = 0x1


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getAssetsPath(I)Ljava/lang/String;
    .registers 2

    .line 1
    if-eqz p0, :cond_14

    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p0, v0, :cond_8

    .line 6
    const-string p0, ""

    .line 8
    goto :goto_1f

    .line 9
    :cond_8
    invoke-static {}, Lcom/android/fileexplorer/util/DeviceUtils;->isNightMode()Z

    .line 12
    move-result p0

    .line 13
    if-eqz p0, :cond_11

    .line 15
    const-string p0, "maml/emptyView/info/darkMode"

    .line 17
    goto :goto_1f

    .line 18
    :cond_11
    const-string p0, "maml/emptyView/info/normalMode"

    .line 20
    goto :goto_1f

    .line 21
    :cond_14
    invoke-static {}, Lcom/android/fileexplorer/util/DeviceUtils;->isNightMode()Z

    .line 24
    move-result p0

    .line 25
    if-eqz p0, :cond_1d

    .line 27
    const-string p0, "maml/emptyView/folder/darkMode"

    .line 29
    goto :goto_1f

    .line 30
    :cond_1d
    const-string p0, "maml/emptyView/folder/normalMode"

    .line 32
    :goto_1f
    return-object p0
.end method

.method public static getMamlView(Landroid/content/Context;I)Lcom/miui/maml/component/MamlView;
    .registers 4

    .line 1
    new-instance v0, Lcom/miui/maml/component/MamlView;

    .line 3
    invoke-static {p1}, Lcom/android/fileexplorer/view/EmptyView$MamlViewFactory;->getAssetsPath(I)Ljava/lang/String;

    .line 6
    move-result-object p1

    .line 7
    const/4 v1, 0x2

    .line 8
    invoke-direct {v0, p0, p1, v1}, Lcom/miui/maml/component/MamlView;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    .line 11
    return-object v0
.end method
