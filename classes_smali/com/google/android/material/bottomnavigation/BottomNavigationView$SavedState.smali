.class Lcom/google/android/material/bottomnavigation/BottomNavigationView$SavedState;
.super Landroidx/customview/view/AbsSavedState;
.source "BottomNavigationView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/bottomnavigation/BottomNavigationView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/material/bottomnavigation/BottomNavigationView$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public menuPresenterState:Landroid/os/Bundle;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lcom/google/android/material/bottomnavigation/BottomNavigationView$SavedState$1;

    .line 3
    invoke-direct {v0}, Lcom/google/android/material/bottomnavigation/BottomNavigationView$SavedState$1;-><init>()V

    .line 6
    sput-object v0, Lcom/google/android/material/bottomnavigation/BottomNavigationView$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 8
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V
    .registers 3

    .line 2
    invoke-direct {p0, p1, p2}, Landroidx/customview/view/AbsSavedState;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    if-nez p2, :cond_d

    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p2

    .line 4
    :cond_d
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/bottomnavigation/BottomNavigationView$SavedState;->readFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Landroidx/customview/view/AbsSavedState;-><init>(Landroid/os/Parcelable;)V

    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V
    .registers 3

    .line 1
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationView$SavedState;->menuPresenterState:Landroid/os/Bundle;

    .line 7
    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/customview/view/AbsSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 4
    iget-object p2, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationView$SavedState;->menuPresenterState:Landroid/os/Bundle;

    .line 6
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 9
    return-void
.end method
