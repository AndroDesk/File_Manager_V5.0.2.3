.class public Lmiuix/internal/util/ParcelableSparseArray;
.super Landroid/util/SparseArray;
.source "ParcelableSparseArray.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/SparseArray<",
        "Landroid/os/Parcelable;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lmiuix/internal/util/ParcelableSparseArray;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lmiuix/internal/util/ParcelableSparseArray$1;

    .line 3
    invoke-direct {v0}, Lmiuix/internal/util/ParcelableSparseArray$1;-><init>()V

    .line 6
    sput-object v0, Lmiuix/internal/util/ParcelableSparseArray;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 8
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Landroid/util/SparseArray;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V
    .registers 7

    .line 2
    invoke-direct {p0}, Landroid/util/SparseArray;-><init>()V

    .line 3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 4
    new-array v1, v0, [I

    .line 5
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readIntArray([I)V

    .line 6
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->readParcelableArray(Ljava/lang/ClassLoader;)[Landroid/os/Parcelable;

    move-result-object p1

    const/4 p2, 0x0

    :goto_11
    if-ge p2, v0, :cond_1d

    .line 7
    aget v2, v1, p2

    aget-object v3, p1, p2

    invoke-virtual {p0, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_11

    :cond_1d
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 8

    .line 1
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    .line 4
    move-result v0

    .line 5
    new-array v1, v0, [I

    .line 7
    new-array v2, v0, [Landroid/os/Parcelable;

    .line 9
    const/4 v3, 0x0

    .line 10
    :goto_9
    if-ge v3, v0, :cond_1c

    .line 12
    invoke-virtual {p0, v3}, Landroid/util/SparseArray;->keyAt(I)I

    .line 15
    move-result v4

    .line 16
    aput v4, v1, v3

    .line 18
    invoke-virtual {p0, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 21
    move-result-object v4

    .line 22
    check-cast v4, Landroid/os/Parcelable;

    .line 24
    aput-object v4, v2, v3

    .line 26
    add-int/lit8 v3, v3, 0x1

    .line 28
    goto :goto_9

    .line 29
    :cond_1c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 32
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 35
    invoke-virtual {p1, v2, p2}, Landroid/os/Parcel;->writeParcelableArray([Landroid/os/Parcelable;I)V

    .line 38
    return-void
.end method
