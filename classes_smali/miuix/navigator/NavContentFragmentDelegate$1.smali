.class Lmiuix/navigator/NavContentFragmentDelegate$1;
.super Lmiuix/appcompat/app/DelegateFragmentFactory;
.source "NavContentFragmentDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/navigator/NavContentFragmentDelegate;-><init>(Lmiuix/navigator/SubNavigator;Landroidx/fragment/app/Fragment;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lmiuix/navigator/NavContentFragmentDelegate;

.field public final synthetic val$navigator:Lmiuix/navigator/SubNavigator;


# direct methods
.method public constructor <init>(Lmiuix/navigator/NavContentFragmentDelegate;Lmiuix/navigator/SubNavigator;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lmiuix/navigator/NavContentFragmentDelegate$1;->this$0:Lmiuix/navigator/NavContentFragmentDelegate;

    .line 3
    iput-object p2, p0, Lmiuix/navigator/NavContentFragmentDelegate$1;->val$navigator:Lmiuix/navigator/SubNavigator;

    .line 5
    invoke-direct {p0}, Lmiuix/appcompat/app/DelegateFragmentFactory;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public createFragmentDelegate(Landroidx/fragment/app/Fragment;)Lmiuix/appcompat/app/FragmentDelegate;
    .registers 4

    .line 1
    new-instance v0, Lmiuix/navigator/NavContentChildFragmentDelegate;

    .line 3
    iget-object v1, p0, Lmiuix/navigator/NavContentFragmentDelegate$1;->val$navigator:Lmiuix/navigator/SubNavigator;

    .line 5
    invoke-direct {v0, v1, p1}, Lmiuix/navigator/NavContentChildFragmentDelegate;-><init>(Lmiuix/navigator/SubNavigator;Landroidx/fragment/app/Fragment;)V

    .line 8
    return-object v0
.end method
