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

    .line 1
    new-instance v0, Lmiui/sharesdk/model/ShareResource$1;

    .line 3
    invoke-direct {v0}, Lmiui/sharesdk/model/ShareResource$1;-><init>()V

    .line 6
    sput-object v0, Lmiui/sharesdk/model/ShareResource;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 8
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/sharesdk/model/ShareResource;->resId:Ljava/lang/String;

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lmiui/sharesdk/model/ShareResource;->subResId:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lmiui/sharesdk/model/ShareResource;->resId:Ljava/lang/String;

    .line 3
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

    .line 1
    iget-object v0, p0, Lmiui/sharesdk/model/ShareResource;->resId:Ljava/lang/String;

    .line 3
    const-string v1, "resId"

    .line 5
    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    iget-object v0, p0, Lmiui/sharesdk/model/ShareResource;->subResId:Ljava/lang/String;

    .line 10
    const-string v1, "subResId"

    .line 12
    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    return-void
.end method

.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 1
    iget-object p2, p0, Lmiui/sharesdk/model/ShareResource;->resId:Ljava/lang/String;

    .line 3
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6
    iget-object p2, p0, Lmiui/sharesdk/model/ShareResource;->subResId:Ljava/lang/String;

    .line 8
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 11
    return-void
.end method
