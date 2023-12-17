.class Lmiuix/appcompat/internal/app/widget/ActionBarView$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "ActionBarView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/appcompat/internal/app/widget/ActionBarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$ClassLoaderCreator<",
            "Lmiuix/appcompat/internal/app/widget/ActionBarView$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public applyBlur:Z

.field public expandState:I

.field public expandedMenuItemId:I

.field public isEndOverflowOpen:Z

.field public isOverflowOpen:Z

.field public userExpandState:I

.field public userSetExpandState:Z


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lmiuix/appcompat/internal/app/widget/ActionBarView$SavedState$1;

    .line 3
    invoke-direct {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView$SavedState$1;-><init>()V

    .line 6
    sput-object v0, Lmiuix/appcompat/internal/app/widget/ActionBarView$SavedState;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    .line 8
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 5

    .line 2
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$SavedState;->expandedMenuItemId:I

    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_13

    move v0, v1

    goto :goto_14

    :cond_13
    move v0, v2

    :goto_14
    iput-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$SavedState;->isOverflowOpen:Z

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1e

    move v0, v1

    goto :goto_1f

    :cond_1e
    move v0, v2

    :goto_1f
    iput-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$SavedState;->isEndOverflowOpen:Z

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$SavedState;->expandState:I

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2f

    move v0, v1

    goto :goto_30

    :cond_2f
    move v0, v2

    :goto_30
    iput-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$SavedState;->userSetExpandState:Z

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$SavedState;->userExpandState:I

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_3f

    goto :goto_40

    :cond_3f
    move v1, v2

    :goto_40
    iput-boolean v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$SavedState;->applyBlur:Z

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V
    .registers 5

    .line 10
    invoke-direct {p0, p1, p2}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    .line 11
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    iput p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$SavedState;->expandedMenuItemId:I

    .line 12
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_13

    move p2, v0

    goto :goto_14

    :cond_13
    move p2, v1

    :goto_14
    iput-boolean p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$SavedState;->isOverflowOpen:Z

    .line 13
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    if-eqz p2, :cond_1e

    move p2, v0

    goto :goto_1f

    :cond_1e
    move p2, v1

    :goto_1f
    iput-boolean p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$SavedState;->isEndOverflowOpen:Z

    .line 14
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    iput p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$SavedState;->expandState:I

    .line 15
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    if-eqz p2, :cond_2f

    move p2, v0

    goto :goto_30

    :cond_2f
    move p2, v1

    :goto_30
    iput-boolean p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$SavedState;->userSetExpandState:Z

    .line 16
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    iput p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$SavedState;->userExpandState:I

    .line 17
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_3f

    goto :goto_40

    :cond_3f
    move v0, v1

    :goto_40
    iput-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$SavedState;->applyBlur:Z

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 1
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 4
    iget p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$SavedState;->expandedMenuItemId:I

    .line 6
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 9
    iget-boolean p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$SavedState;->isOverflowOpen:Z

    .line 11
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 14
    iget-boolean p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$SavedState;->isEndOverflowOpen:Z

    .line 16
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 19
    iget p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$SavedState;->expandState:I

    .line 21
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 24
    iget-boolean p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$SavedState;->userSetExpandState:Z

    .line 26
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 29
    iget p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$SavedState;->userExpandState:I

    .line 31
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 34
    iget-boolean p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$SavedState;->applyBlur:Z

    .line 36
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 39
    return-void
.end method
