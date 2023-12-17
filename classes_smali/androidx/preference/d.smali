.class public final synthetic Landroidx/preference/d;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroidx/fragment/app/FragmentManager$m;


# instance fields
.field public final synthetic a:Landroidx/preference/PreferenceHeaderFragmentCompat;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/preference/PreferenceHeaderFragmentCompat;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/preference/d;->a:Landroidx/preference/PreferenceHeaderFragmentCompat;

    return-void
.end method


# virtual methods
.method public final onBackStackChanged()V
    .registers 3

    iget-object v0, p0, Landroidx/preference/d;->a:Landroidx/preference/PreferenceHeaderFragmentCompat;

    sget v1, Landroidx/preference/PreferenceHeaderFragmentCompat;->b:I

    const-string v1, "this$0"

    invoke-static {v0, v1}, Li3/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, v0, Landroidx/preference/PreferenceHeaderFragmentCompat;->a:Landroidx/preference/PreferenceHeaderFragmentCompat$a;

    invoke-static {v1}, Li3/g;->b(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->F()I

    move-result v0

    if-nez v0, :cond_1a

    const/4 v0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x0

    :goto_1b
    invoke-virtual {v1, v0}, Landroidx/activity/h;->setEnabled(Z)V

    return-void
.end method
