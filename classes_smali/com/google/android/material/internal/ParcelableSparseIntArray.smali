.class public Lcom/google/android/material/internal/ParcelableSparseIntArray;
.super Landroid/util/SparseIntArray;
.source "ParcelableSparseIntArray.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/material/internal/ParcelableSparseIntArray;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lcom/google/android/material/internal/ParcelableSparseIntArray$1;

    .line 3
    invoke-direct {v0}, Lcom/google/android/material/internal/ParcelableSparseIntArray$1;-><init>()V

    .line 6
    sput-object v0, Lcom/google/android/material/internal/ParcelableSparseIntArray;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 8
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Landroid/util/SparseIntArray;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 2

    .line 2
    invoke-direct {p0, p1}, Landroid/util/SparseIntArray;-><init>(I)V

    return-void
.end method

.method public constructor <init>(Landroid/util/SparseIntArray;)V
    .registers 5

    .line 3
    invoke-direct {p0}, Landroid/util/SparseIntArray;-><init>()V

    const/4 v0, 0x0

    .line 4
    :goto_4
    invoke-virtual {p1}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_18

    .line 5
    invoke-virtual {p1, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v1

    invoke-virtual {p1, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_18
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 6

    .line 1
    invoke-virtual {p0}, Landroid/util/SparseIntArray;->size()I

    .line 4
    move-result p2

    .line 5
    new-array p2, p2, [I

    .line 7
    invoke-virtual {p0}, Landroid/util/SparseIntArray;->size()I

    .line 10
    move-result v0

    .line 11
    new-array v0, v0, [I

    .line 13
    const/4 v1, 0x0

    .line 14
    :goto_d
    invoke-virtual {p0}, Landroid/util/SparseIntArray;->size()I

    .line 17
    move-result v2

    .line 18
    if-ge v1, v2, :cond_22

    .line 20
    invoke-virtual {p0, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    .line 23
    move-result v2

    .line 24
    aput v2, p2, v1

    .line 26
    invoke-virtual {p0, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    .line 29
    move-result v2

    .line 30
    aput v2, v0, v1

    .line 32
    add-int/lit8 v1, v1, 0x1

    .line 34
    goto :goto_d

    .line 35
    :cond_22
    invoke-virtual {p0}, Landroid/util/SparseIntArray;->size()I

    .line 38
    move-result v1

    .line 39
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 42
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 45
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 48
    return-void
.end method
