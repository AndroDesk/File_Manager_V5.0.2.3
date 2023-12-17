.class public final synthetic Landroidx/preference/d;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroidx/fragment/app/FragmentManager$m;


# instance fields
.field public final synthetic a:Landroidx/preference/PreferenceHeaderFragmentCompat;


# direct methods
.method public synthetic constructor <init>(Landroidx/preference/PreferenceHeaderFragmentCompat;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/preference/d;->a:Landroidx/preference/PreferenceHeaderFragmentCompat;

    return-void
.end method


# virtual methods
.method public final onBackStackChanged()V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/preference/d;->a:Landroidx/preference/PreferenceHeaderFragmentCompat;

    .line 3
    sget v1, Landroidx/preference/PreferenceHeaderFragmentCompat;->b:I

    .line 5
    const-string v1, "this$0"

    .line 7
    invoke-static {v0, v1}, Li3/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    iget-object v1, v0, Landroidx/preference/PreferenceHeaderFragmentCompat;->a:Landroidx/preference/PreferenceHeaderFragmentCompat$a;

    .line 12
    invoke-static {v1}, Li3/g;->b(Ljava/lang/Object;)V

    .line 15
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->F()I

    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_1a

    .line 25
    const/4 v0, 0x1

    .line 26
    goto :goto_1b

    .line 27
    :cond_1a
    const/4 v0, 0x0

    .line 28
    :goto_1b
    invoke-virtual {v1, v0}, Landroidx/activity/h;->setEnabled(Z)V

    .line 31
    return-void
.end method
