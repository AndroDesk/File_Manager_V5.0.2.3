.class Lmiui/sharesdk/model/ShareResource$1;
.super Ljava/lang/Object;
.source "ShareResource.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/sharesdk/model/ShareResource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lmiui/sharesdk/model/ShareResource;",
        ">;"
    }
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
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Lmiui/sharesdk/model/ShareResource$1;->createFromParcel(Landroid/os/Parcel;)Lmiui/sharesdk/model/ShareResource;

    move-result-object p1

    return-object p1
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lmiui/sharesdk/model/ShareResource;
    .registers 3

    new-instance v0, Lmiui/sharesdk/model/ShareResource;

    invoke-direct {v0, p1}, Lmiui/sharesdk/model/ShareResource;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Lmiui/sharesdk/model/ShareResource$1;->newArray(I)[Lmiui/sharesdk/model/ShareResource;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lmiui/sharesdk/model/ShareResource;
    .registers 2

    new-array p1, p1, [Lmiui/sharesdk/model/ShareResource;

    return-object p1
.end method
