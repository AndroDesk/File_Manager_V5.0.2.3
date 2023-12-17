.class public Landroidx/drawerlayout/widget/DrawerLayout$SavedState;
.super Landroidx/customview/view/AbsSavedState;
.source "DrawerLayout.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroidx/drawerlayout/widget/DrawerLayout$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I

.field public e:I


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Landroidx/drawerlayout/widget/DrawerLayout$SavedState$a;

    .line 3
    invoke-direct {v0}, Landroidx/drawerlayout/widget/DrawerLayout$SavedState$a;-><init>()V

    .line 6
    sput-object v0, Landroidx/drawerlayout/widget/DrawerLayout$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 8
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/customview/view/AbsSavedState;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    .line 4
    const/4 p2, 0x0

    .line 5
    iput p2, p0, Landroidx/drawerlayout/widget/DrawerLayout$SavedState;->a:I

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 10
    move-result p2

    .line 11
    iput p2, p0, Landroidx/drawerlayout/widget/DrawerLayout$SavedState;->a:I

    .line 13
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 16
    move-result p2

    .line 17
    iput p2, p0, Landroidx/drawerlayout/widget/DrawerLayout$SavedState;->b:I

    .line 19
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 22
    move-result p2

    .line 23
    iput p2, p0, Landroidx/drawerlayout/widget/DrawerLayout$SavedState;->c:I

    .line 25
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 28
    move-result p2

    .line 29
    iput p2, p0, Landroidx/drawerlayout/widget/DrawerLayout$SavedState;->d:I

    .line 31
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 34
    move-result p1

    .line 35
    iput p1, p0, Landroidx/drawerlayout/widget/DrawerLayout$SavedState;->e:I

    .line 37
    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/customview/view/AbsSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 4
    iget p2, p0, Landroidx/drawerlayout/widget/DrawerLayout$SavedState;->a:I

    .line 6
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 9
    iget p2, p0, Landroidx/drawerlayout/widget/DrawerLayout$SavedState;->b:I

    .line 11
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 14
    iget p2, p0, Landroidx/drawerlayout/widget/DrawerLayout$SavedState;->c:I

    .line 16
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 19
    iget p2, p0, Landroidx/drawerlayout/widget/DrawerLayout$SavedState;->d:I

    .line 21
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 24
    iget p2, p0, Landroidx/drawerlayout/widget/DrawerLayout$SavedState;->e:I

    .line 26
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 29
    return-void
.end method
