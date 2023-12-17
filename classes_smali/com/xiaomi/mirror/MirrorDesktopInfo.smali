.class public Lcom/xiaomi/mirror/MirrorDesktopInfo;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/xiaomi/mirror/MirrorDesktopInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final KEY_DESKTOP_HEIGHT:Ljava/lang/String; = "desktop_height"

.field public static final KEY_DESKTOP_ORIENTATION:Ljava/lang/String; = "desktop_orientation"

.field public static final KEY_DESKTOP_SEAT:Ljava/lang/String; = "desktop_seat"

.field public static final KEY_DESKTOP_WIDTH:Ljava/lang/String; = "desktop_width"


# instance fields
.field public mBundle:Landroid/os/Bundle;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/xiaomi/mirror/MirrorDesktopInfo$1;

    invoke-direct {v0}, Lcom/xiaomi/mirror/MirrorDesktopInfo$1;-><init>()V

    sput-object v0, Lcom/xiaomi/mirror/MirrorDesktopInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/mirror/MirrorDesktopInfo;->mBundle:Landroid/os/Bundle;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/mirror/MirrorDesktopInfo;->mBundle:Landroid/os/Bundle;

    const-class v0, Lcom/xiaomi/mirror/MirrorDesktopInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/mirror/MirrorDesktopInfo;->mBundle:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getBundle()Landroid/os/Bundle;
    .registers 2

    iget-object v0, p0, Lcom/xiaomi/mirror/MirrorDesktopInfo;->mBundle:Landroid/os/Bundle;

    return-object v0
.end method

.method public getDesktopHeight()I
    .registers 3

    iget-object v0, p0, Lcom/xiaomi/mirror/MirrorDesktopInfo;->mBundle:Landroid/os/Bundle;

    const-string v1, "desktop_height"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getDesktopOrientation()I
    .registers 3

    iget-object v0, p0, Lcom/xiaomi/mirror/MirrorDesktopInfo;->mBundle:Landroid/os/Bundle;

    const-string v1, "desktop_orientation"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getDesktopSeat()I
    .registers 3

    iget-object v0, p0, Lcom/xiaomi/mirror/MirrorDesktopInfo;->mBundle:Landroid/os/Bundle;

    const-string v1, "desktop_seat"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getDesktopWidth()I
    .registers 3

    iget-object v0, p0, Lcom/xiaomi/mirror/MirrorDesktopInfo;->mBundle:Landroid/os/Bundle;

    const-string v1, "desktop_width"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 1
    const-string v0, "MirrorDesktopInfo{mBundle="

    .line 3
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/xiaomi/mirror/MirrorDesktopInfo;->mBundle:Landroid/os/Bundle;

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 12
    const/16 v1, 0x7d

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 17
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    move-result-object v0

    .line 21
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    iget-object p2, p0, Lcom/xiaomi/mirror/MirrorDesktopInfo;->mBundle:Landroid/os/Bundle;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    return-void
.end method
