.class public final Lmiui/sharesdk/model/InviteServerExtension;
.super Ljava/lang/Object;
.source "InviteServerExtension.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lmiui/sharesdk/model/InviteServerExtension;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final extraInfo:Ljava/lang/String;

.field public final shareContent:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lmiui/sharesdk/model/InviteServerExtension$1;

    invoke-direct {v0}, Lmiui/sharesdk/model/InviteServerExtension$1;-><init>()V

    sput-object v0, Lmiui/sharesdk/model/InviteServerExtension;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/sharesdk/model/InviteServerExtension;->extraInfo:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lmiui/sharesdk/model/InviteServerExtension;->shareContent:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_c

    if-eqz p2, :cond_c

    iput-object p1, p0, Lmiui/sharesdk/model/InviteServerExtension;->extraInfo:Ljava/lang/String;

    iput-object p2, p0, Lmiui/sharesdk/model/InviteServerExtension;->shareContent:Ljava/lang/String;

    return-void

    :cond_c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "null == extraInfo || null == shareContentStr"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
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

    iget-object v0, p0, Lmiui/sharesdk/model/InviteServerExtension;->extraInfo:Ljava/lang/String;

    const-string v1, "extraInfo"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lmiui/sharesdk/model/InviteServerExtension;->shareContent:Ljava/lang/String;

    const-string v1, "shareContentStr"

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

    iget-object p2, p0, Lmiui/sharesdk/model/InviteServerExtension;->extraInfo:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lmiui/sharesdk/model/InviteServerExtension;->shareContent:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
