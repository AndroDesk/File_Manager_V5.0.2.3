.class public Lmiuix/appcompat/app/DelegateFragmentFactory;
.super Landroidx/fragment/app/p;
.source "DelegateFragmentFactory.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/p;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public createFragmentDelegate(Landroidx/fragment/app/Fragment;)Lmiuix/appcompat/app/FragmentDelegate;
    .registers 3

    .line 1
    new-instance v0, Lmiuix/appcompat/app/FragmentDelegate;

    .line 3
    invoke-direct {v0, p1}, Lmiuix/appcompat/app/FragmentDelegate;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 6
    return-object v0
.end method
