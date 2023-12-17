.class public Lcom/android/fileexplorer/service/IRecentManager$Default;
.super Ljava/lang/Object;
.source "IRecentManager.java"

# interfaces
.implements Lcom/android/fileexplorer/service/IRecentManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/fileexplorer/service/IRecentManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getThumbnail(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .registers 4

    const/4 p1, 0x0

    return-object p1
.end method

.method public init(Lcom/android/fileexplorer/service/IInitCallback;)V
    .registers 2

    return-void
.end method

.method public refresh()V
    .registers 1

    return-void
.end method
