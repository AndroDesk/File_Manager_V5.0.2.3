.class public Lcom/android/fileexplorer/fragment/app/MiFragmentStatePagerAdapter;
.super Landroidx/fragment/app/z;
.source "MiFragmentStatePagerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/fileexplorer/fragment/app/MiFragmentStatePagerAdapter$OnPrimaryItemChangeListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MiFragmentStatePagerAdapter"


# instance fields
.field private mPrimaryChangeListener:Lcom/android/fileexplorer/fragment/app/MiFragmentStatePagerAdapter$OnPrimaryItemChangeListener;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Landroidx/fragment/app/FragmentManager;)V
    .registers 2

    invoke-direct {p0, p1}, Landroidx/fragment/app/z;-><init>(Landroidx/fragment/app/FragmentManager;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic getItem(I)Landroidx/fragment/app/Fragment;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/fragment/app/MiFragmentStatePagerAdapter;->getItem(I)Lmiuix/appcompat/app/Fragment;

    move-result-object p1

    return-object p1
.end method

.method public getItem(I)Lmiuix/appcompat/app/Fragment;
    .registers 2

    const/4 p1, 0x0

    return-object p1
.end method

.method public restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V
    .registers 3

    :try_start_0
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/z;->restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_4

    goto :goto_e

    :catch_4
    move-exception p1

    sget-object p2, Lcom/android/fileexplorer/fragment/app/MiFragmentStatePagerAdapter;->TAG:Ljava/lang/String;

    invoke-static {p1}, Lcom/android/fileexplorer/model/Log;->getStackTraceString(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_e
    return-void
.end method

.method public setPrimaryChangeListener(Lcom/android/fileexplorer/fragment/app/MiFragmentStatePagerAdapter$OnPrimaryItemChangeListener;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/fragment/app/MiFragmentStatePagerAdapter;->mPrimaryChangeListener:Lcom/android/fileexplorer/fragment/app/MiFragmentStatePagerAdapter$OnPrimaryItemChangeListener;

    return-void
.end method

.method public setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .registers 4

    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/z;->setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/app/MiFragmentStatePagerAdapter;->mPrimaryChangeListener:Lcom/android/fileexplorer/fragment/app/MiFragmentStatePagerAdapter$OnPrimaryItemChangeListener;

    if-eqz p1, :cond_e

    if-eqz p3, :cond_e

    check-cast p3, Lmiuix/appcompat/app/Fragment;

    invoke-interface {p1, p3, p2}, Lcom/android/fileexplorer/fragment/app/MiFragmentStatePagerAdapter$OnPrimaryItemChangeListener;->onChange(Lmiuix/appcompat/app/Fragment;I)V

    :cond_e
    return-void
.end method
