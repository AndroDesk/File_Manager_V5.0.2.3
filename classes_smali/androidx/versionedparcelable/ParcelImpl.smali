.class public Landroidx/versionedparcelable/ParcelImpl;
.super Ljava/lang/Object;
.source "ParcelImpl.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "BanParcelableUsage"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroidx/versionedparcelable/ParcelImpl;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Lh1/c;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Landroidx/versionedparcelable/ParcelImpl$a;

    .line 3
    invoke-direct {v0}, Landroidx/versionedparcelable/ParcelImpl$a;-><init>()V

    .line 6
    sput-object v0, Landroidx/versionedparcelable/ParcelImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 8
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Lh1/b;

    .line 6
    invoke-direct {v0, p1}, Lh1/b;-><init>(Landroid/os/Parcel;)V

    .line 9
    invoke-virtual {v0}, Lh1/a;->l()Lh1/c;

    .line 12
    move-result-object p1

    .line 13
    iput-object p1, p0, Landroidx/versionedparcelable/ParcelImpl;->a:Lh1/c;

    .line 15
    return-void
.end method


# virtual methods
.method public final describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 1
    new-instance p2, Lh1/b;

    .line 3
    invoke-direct {p2, p1}, Lh1/b;-><init>(Landroid/os/Parcel;)V

    .line 6
    iget-object p1, p0, Landroidx/versionedparcelable/ParcelImpl;->a:Lh1/c;

    .line 8
    invoke-virtual {p2, p1}, Lh1/a;->t(Lh1/c;)V

    .line 11
    return-void
.end method
