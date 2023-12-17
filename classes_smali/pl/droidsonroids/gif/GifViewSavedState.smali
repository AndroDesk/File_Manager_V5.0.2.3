.class Lpl/droidsonroids/gif/GifViewSavedState;
.super Landroid/view/View$BaseSavedState;
.source "GifViewSavedState.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lpl/droidsonroids/gif/GifViewSavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:[[J


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lpl/droidsonroids/gif/GifViewSavedState$a;

    .line 3
    invoke-direct {v0}, Lpl/droidsonroids/gif/GifViewSavedState$a;-><init>()V

    .line 6
    sput-object v0, Lpl/droidsonroids/gif/GifViewSavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 8
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 5

    .line 1
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 7
    move-result v0

    .line 8
    new-array v0, v0, [[J

    .line 10
    iput-object v0, p0, Lpl/droidsonroids/gif/GifViewSavedState;->a:[[J

    .line 12
    const/4 v0, 0x0

    .line 13
    :goto_c
    iget-object v1, p0, Lpl/droidsonroids/gif/GifViewSavedState;->a:[[J

    .line 15
    array-length v2, v1

    .line 16
    if-ge v0, v2, :cond_1a

    .line 18
    invoke-virtual {p1}, Landroid/os/Parcel;->createLongArray()[J

    .line 21
    move-result-object v2

    .line 22
    aput-object v2, v1, v0

    .line 24
    add-int/lit8 v0, v0, 0x1

    .line 26
    goto :goto_c

    .line 27
    :cond_1a
    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .registers 6

    .line 1
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 4
    iget-object p2, p0, Lpl/droidsonroids/gif/GifViewSavedState;->a:[[J

    .line 6
    array-length p2, p2

    .line 7
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 10
    iget-object p2, p0, Lpl/droidsonroids/gif/GifViewSavedState;->a:[[J

    .line 12
    array-length v0, p2

    .line 13
    const/4 v1, 0x0

    .line 14
    :goto_d
    if-ge v1, v0, :cond_17

    .line 16
    aget-object v2, p2, v1

    .line 18
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 21
    add-int/lit8 v1, v1, 0x1

    .line 23
    goto :goto_d

    .line 24
    :cond_17
    return-void
.end method
