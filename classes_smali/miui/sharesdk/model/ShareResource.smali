.class public final Lmiui/sharesdk/model/ShareResource;
.super Ljava/lang/Object;
.source "ShareResource.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lmiui/sharesdk/model/ShareResource;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final resId:Ljava/lang/String;

.field private final subResId:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lmiui/sharesdk/model/ShareResource$1;

    invoke-direct {v0}, Lmiui/sharesdk/model/ShareResource$1;-><init>()V

    sput-object v0, Lmiui/sharesdk/model/ShareResource;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/sharesdk/model/ShareResource;->resId:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lmiui/sharesdk/model/ShareResource;->subResId:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmiui/sharesdk/model/ShareResource;->resId:Ljava/lang/String;

    iput-object p2, p0, Lmiui/sharesdk/model/ShareResource;->subResId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public addToRequestParam(Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lmiui/sharesdk/model/ShareResource;->resId:Ljava/lang/String;

    const-string v1, "resId"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lmiui/sharesdk/model/ShareResource;->subResId:Ljava/lang/String;

    const-string v1, "subResId"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    iget-object p2, p0, Lmiui/sharesdk/model/ShareResource;->resId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lmiui/sharesdk/model/ShareResource;->subResId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method