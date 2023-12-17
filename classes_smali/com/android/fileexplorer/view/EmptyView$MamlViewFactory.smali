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
.field public static final TYPE_FOLDER:I

.field public static final TYPE_INFO:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const v0, 0x92d96

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/view/EmptyView$MamlViewFactory;->TYPE_FOLDER:I

    const v0, 0x92d97

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/view/EmptyView$MamlViewFactory;->TYPE_INFO:I

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getAssetsPath(I)Ljava/lang/String;
    .registers 2

    if-eqz p0, :cond_14

    const/4 v0, 0x1

    if-eq p0, v0, :cond_8

    const-string p0, ""

    goto :goto_1f

    :cond_8
    invoke-static {}, Lcom/android/fileexplorer/util/DeviceUtils;->isNightMode()Z

    move-result p0

    if-eqz p0, :cond_11

    const-string p0, "maml/emptyView/info/darkMode"

    goto :goto_1f

    :cond_11
    const-string p0, "maml/emptyView/info/normalMode"

    goto :goto_1f

    :cond_14
    invoke-static {}, Lcom/android/fileexplorer/util/DeviceUtils;->isNightMode()Z

    move-result p0

    if-eqz p0, :cond_1d

    const-string p0, "maml/emptyView/folder/darkMode"

    goto :goto_1f

    :cond_1d
    const-string p0, "maml/emptyView/folder/normalMode"

    :goto_1f
    return-object p0
.end method

.method public static getMamlView(Landroid/content/Context;I)Lcom/miui/maml/component/MamlView;
    .registers 4

    new-instance v0, Lcom/miui/maml/component/MamlView;

    invoke-static {p1}, Lcom/android/fileexplorer/view/EmptyView$MamlViewFactory;->getAssetsPath(I)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x2

    invoke-direct {v0, p0, p1, v1}, Lcom/miui/maml/component/MamlView;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    return-object v0
.end method
