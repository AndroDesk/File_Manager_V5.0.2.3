.class public final Landroidx/preference/MultiSelectListPreferenceDialogFragment$a;
.super Ljava/lang/Object;
.source "MultiSelectListPreferenceDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnMultiChoiceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/preference/MultiSelectListPreferenceDialogFragment;->d(Landroid/app/AlertDialog$Builder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroidx/preference/MultiSelectListPreferenceDialogFragment;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Landroidx/preference/MultiSelectListPreferenceDialogFragment;)V
    .registers 2

    iput-object p1, p0, Landroidx/preference/MultiSelectListPreferenceDialogFragment$a;->a:Landroidx/preference/MultiSelectListPreferenceDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;IZ)V
    .registers 6

    if-eqz p3, :cond_18

    iget-object p1, p0, Landroidx/preference/MultiSelectListPreferenceDialogFragment$a;->a:Landroidx/preference/MultiSelectListPreferenceDialogFragment;

    iget-boolean p3, p1, Landroidx/preference/MultiSelectListPreferenceDialogFragment;->j:Z

    iget-object v0, p1, Landroidx/preference/MultiSelectListPreferenceDialogFragment;->i:Ljava/util/HashSet;

    iget-object v1, p1, Landroidx/preference/MultiSelectListPreferenceDialogFragment;->l:[Ljava/lang/CharSequence;

    aget-object p2, v1, p2

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result p2

    or-int/2addr p2, p3

    iput-boolean p2, p1, Landroidx/preference/MultiSelectListPreferenceDialogFragment;->j:Z

    goto :goto_2d

    :cond_18
    iget-object p1, p0, Landroidx/preference/MultiSelectListPreferenceDialogFragment$a;->a:Landroidx/preference/MultiSelectListPreferenceDialogFragment;

    iget-boolean p3, p1, Landroidx/preference/MultiSelectListPreferenceDialogFragment;->j:Z

    iget-object v0, p1, Landroidx/preference/MultiSelectListPreferenceDialogFragment;->i:Ljava/util/HashSet;

    iget-object v1, p1, Landroidx/preference/MultiSelectListPreferenceDialogFragment;->l:[Ljava/lang/CharSequence;

    aget-object p2, v1, p2

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result p2

    or-int/2addr p2, p3

    iput-boolean p2, p1, Landroidx/preference/MultiSelectListPreferenceDialogFragment;->j:Z

    :goto_2d
    return-void
.end method