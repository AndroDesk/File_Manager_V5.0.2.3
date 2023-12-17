.class public Lcom/android/cloud/util/FragmentUtils;
.super Ljava/lang/Object;
.source "FragmentUtils.java"


# direct methods
.method private constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 6
    const-string v1, "FragmentUtils class"

    .line 8
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 11
    throw v0
.end method

.method public static addFragment(Landroidx/fragment/app/FragmentManager;ILandroidx/fragment/app/Fragment;)V
    .registers 6

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentManager;->D(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 12
    move-result-object v1

    .line 13
    new-instance v2, Landroidx/fragment/app/a;

    .line 15
    invoke-direct {v2, p0}, Landroidx/fragment/app/a;-><init>(Landroidx/fragment/app/FragmentManager;)V

    .line 18
    if-eqz v1, :cond_17

    .line 20
    invoke-virtual {v2, p1, p2, v0}, Landroidx/fragment/app/b0;->k(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)V

    .line 23
    goto :goto_1b

    .line 24
    :cond_17
    const/4 p0, 0x1

    .line 25
    invoke-virtual {v2, p1, p2, v0, p0}, Landroidx/fragment/app/a;->h(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    .line 28
    :goto_1b
    invoke-virtual {v2}, Landroidx/fragment/app/a;->p()I

    .line 31
    return-void
.end method

.method public static replaceFragment(Landroidx/fragment/app/FragmentManager;ILandroidx/fragment/app/Fragment;)V
    .registers 4

    .line 1
    invoke-static {p0, p0}, La/a;->d(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/FragmentManager;)Landroidx/fragment/app/a;

    .line 4
    move-result-object p0

    .line 5
    const/16 v0, 0x1003

    .line 7
    iput v0, p0, Landroidx/fragment/app/b0;->h:I

    .line 9
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {p0, p1, p2, v0}, Landroidx/fragment/app/b0;->k(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)V

    .line 20
    invoke-virtual {p0}, Landroidx/fragment/app/a;->d()I

    .line 23
    return-void
.end method

.method public static showFragment(Landroidx/fragment/app/FragmentManager;ILandroidx/fragment/app/Fragment;)V
    .registers 5

    .line 1
    invoke-virtual {p0, p1}, Landroidx/fragment/app/FragmentManager;->C(I)Landroidx/fragment/app/Fragment;

    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Landroidx/fragment/app/a;

    .line 7
    invoke-direct {v1, p0}, Landroidx/fragment/app/a;-><init>(Landroidx/fragment/app/FragmentManager;)V

    .line 10
    if-eqz v0, :cond_e

    .line 12
    invoke-virtual {v1, v0}, Landroidx/fragment/app/a;->j(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/a;

    .line 15
    :cond_e
    const/4 p0, 0x0

    .line 16
    const/4 v0, 0x1

    .line 17
    invoke-virtual {v1, p1, p2, p0, v0}, Landroidx/fragment/app/a;->h(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    .line 20
    invoke-virtual {v1}, Landroidx/fragment/app/a;->d()I

    .line 23
    return-void
.end method
