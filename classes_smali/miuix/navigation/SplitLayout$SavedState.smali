.class Lmiuix/navigation/SplitLayout$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "SplitLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/navigation/SplitLayout;
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
            "Lmiuix/navigation/SplitLayout$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mIsContentEnable:Z

.field private mIsContentOpen:Z

.field private mIsNavigationEnable:Z

.field private mIsNavigationOpen:Z

.field private mRatio:F


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lmiuix/navigation/SplitLayout$SavedState$1;

    invoke-direct {v0}, Lmiuix/navigation/SplitLayout$SavedState$1;-><init>()V

    sput-object v0, Lmiuix/navigation/SplitLayout$SavedState;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 5

    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiuix/navigation/SplitLayout$SavedState;->mIsNavigationOpen:Z

    iput-boolean v0, p0, Lmiuix/navigation/SplitLayout$SavedState;->mIsContentOpen:Z

    iput-boolean v0, p0, Lmiuix/navigation/SplitLayout$SavedState;->mIsNavigationEnable:Z

    iput-boolean v0, p0, Lmiuix/navigation/SplitLayout$SavedState;->mIsContentEnable:Z

    const/high16 v1, 0x3f800000  # 1.0f

    iput v1, p0, Lmiuix/navigation/SplitLayout$SavedState;->mRatio:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_19

    move v1, v0

    goto :goto_1a

    :cond_19
    move v1, v2

    :goto_1a
    iput-boolean v1, p0, Lmiuix/navigation/SplitLayout$SavedState;->mIsNavigationOpen:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_24

    move v1, v0

    goto :goto_25

    :cond_24
    move v1, v2

    :goto_25
    iput-boolean v1, p0, Lmiuix/navigation/SplitLayout$SavedState;->mIsContentOpen:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_2f

    move v1, v0

    goto :goto_30

    :cond_2f
    move v1, v2

    :goto_30
    iput-boolean v1, p0, Lmiuix/navigation/SplitLayout$SavedState;->mIsNavigationEnable:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_39

    goto :goto_3a

    :cond_39
    move v0, v2

    :goto_3a
    iput-boolean v0, p0, Lmiuix/navigation/SplitLayout$SavedState;->mIsContentEnable:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result p1

    iput p1, p0, Lmiuix/navigation/SplitLayout$SavedState;->mRatio:F

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V
    .registers 5

    invoke-direct {p0, p1, p2}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    const/4 p2, 0x1

    iput-boolean p2, p0, Lmiuix/navigation/SplitLayout$SavedState;->mIsNavigationOpen:Z

    iput-boolean p2, p0, Lmiuix/navigation/SplitLayout$SavedState;->mIsContentOpen:Z

    iput-boolean p2, p0, Lmiuix/navigation/SplitLayout$SavedState;->mIsNavigationEnable:Z

    iput-boolean p2, p0, Lmiuix/navigation/SplitLayout$SavedState;->mIsContentEnable:Z

    const/high16 v0, 0x3f800000  # 1.0f

    iput v0, p0, Lmiuix/navigation/SplitLayout$SavedState;->mRatio:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_19

    move v0, p2

    goto :goto_1a

    :cond_19
    move v0, v1

    :goto_1a
    iput-boolean v0, p0, Lmiuix/navigation/SplitLayout$SavedState;->mIsNavigationOpen:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_24

    move v0, p2

    goto :goto_25

    :cond_24
    move v0, v1

    :goto_25
    iput-boolean v0, p0, Lmiuix/navigation/SplitLayout$SavedState;->mIsContentOpen:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2f

    move v0, p2

    goto :goto_30

    :cond_2f
    move v0, v1

    :goto_30
    iput-boolean v0, p0, Lmiuix/navigation/SplitLayout$SavedState;->mIsNavigationEnable:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_39

    goto :goto_3a

    :cond_39
    move p2, v1

    :goto_3a
    iput-boolean p2, p0, Lmiuix/navigation/SplitLayout$SavedState;->mIsContentEnable:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result p1

    iput p1, p0, Lmiuix/navigation/SplitLayout$SavedState;->mRatio:F

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lmiuix/navigation/SplitLayout$SavedState;->mIsNavigationOpen:Z

    iput-boolean p1, p0, Lmiuix/navigation/SplitLayout$SavedState;->mIsContentOpen:Z

    iput-boolean p1, p0, Lmiuix/navigation/SplitLayout$SavedState;->mIsNavigationEnable:Z

    iput-boolean p1, p0, Lmiuix/navigation/SplitLayout$SavedState;->mIsContentEnable:Z

    const/high16 p1, 0x3f800000  # 1.0f

    iput p1, p0, Lmiuix/navigation/SplitLayout$SavedState;->mRatio:F

    return-void
.end method

.method public static synthetic access$000(Lmiuix/navigation/SplitLayout$SavedState;)Z
    .registers 1

    iget-boolean p0, p0, Lmiuix/navigation/SplitLayout$SavedState;->mIsContentEnable:Z

    return p0
.end method

.method public static synthetic access$002(Lmiuix/navigation/SplitLayout$SavedState;Z)Z
    .registers 2

    iput-boolean p1, p0, Lmiuix/navigation/SplitLayout$SavedState;->mIsContentEnable:Z

    return p1
.end method

.method public static synthetic access$100(Lmiuix/navigation/SplitLayout$SavedState;)Z
    .registers 1

    iget-boolean p0, p0, Lmiuix/navigation/SplitLayout$SavedState;->mIsContentOpen:Z

    return p0
.end method

.method public static synthetic access$102(Lmiuix/navigation/SplitLayout$SavedState;Z)Z
    .registers 2

    iput-boolean p1, p0, Lmiuix/navigation/SplitLayout$SavedState;->mIsContentOpen:Z

    return p1
.end method

.method public static synthetic access$200(Lmiuix/navigation/SplitLayout$SavedState;)Z
    .registers 1

    iget-boolean p0, p0, Lmiuix/navigation/SplitLayout$SavedState;->mIsNavigationEnable:Z

    return p0
.end method

.method public static synthetic access$202(Lmiuix/navigation/SplitLayout$SavedState;Z)Z
    .registers 2

    iput-boolean p1, p0, Lmiuix/navigation/SplitLayout$SavedState;->mIsNavigationEnable:Z

    return p1
.end method

.method public static synthetic access$300(Lmiuix/navigation/SplitLayout$SavedState;)Z
    .registers 1

    iget-boolean p0, p0, Lmiuix/navigation/SplitLayout$SavedState;->mIsNavigationOpen:Z

    return p0
.end method

.method public static synthetic access$302(Lmiuix/navigation/SplitLayout$SavedState;Z)Z
    .registers 2

    iput-boolean p1, p0, Lmiuix/navigation/SplitLayout$SavedState;->mIsNavigationOpen:Z

    return p1
.end method

.method public static synthetic access$400(Lmiuix/navigation/SplitLayout$SavedState;)F
    .registers 1

    iget p0, p0, Lmiuix/navigation/SplitLayout$SavedState;->mRatio:F

    return p0
.end method

.method public static synthetic access$402(Lmiuix/navigation/SplitLayout$SavedState;F)F
    .registers 2

    iput p1, p0, Lmiuix/navigation/SplitLayout$SavedState;->mRatio:F

    return p1
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    iget-boolean p2, p0, Lmiuix/navigation/SplitLayout$SavedState;->mIsNavigationOpen:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p2, p0, Lmiuix/navigation/SplitLayout$SavedState;->mIsContentOpen:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p2, p0, Lmiuix/navigation/SplitLayout$SavedState;->mIsNavigationEnable:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p2, p0, Lmiuix/navigation/SplitLayout$SavedState;->mIsContentEnable:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lmiuix/navigation/SplitLayout$SavedState;->mRatio:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    return-void
.end method
