.class Lmiuix/core/widget/NestedScrollView$SavedState$1;
.super Ljava/lang/Object;
.source "NestedScrollView.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/core/widget/NestedScrollView$SavedState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lmiuix/core/widget/NestedScrollView$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lmiuix/core/widget/NestedScrollView$SavedState$1;->createFromParcel(Landroid/os/Parcel;)Lmiuix/core/widget/NestedScrollView$SavedState;

    move-result-object p1

    return-object p1
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lmiuix/core/widget/NestedScrollView$SavedState;
    .registers 3

    .line 2
    new-instance v0, Lmiuix/core/widget/NestedScrollView$SavedState;

    invoke-direct {v0, p1}, Lmiuix/core/widget/NestedScrollView$SavedState;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lmiuix/core/widget/NestedScrollView$SavedState$1;->newArray(I)[Lmiuix/core/widget/NestedScrollView$SavedState;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lmiuix/core/widget/NestedScrollView$SavedState;
    .registers 2

    .line 2
    new-array p1, p1, [Lmiuix/core/widget/NestedScrollView$SavedState;

    return-object p1
.end method
