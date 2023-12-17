.class public final Landroidx/preference/ListPreferenceDialogFragmentCompat$a;
.super Ljava/lang/Object;
.source "ListPreferenceDialogFragmentCompat.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/preference/ListPreferenceDialogFragmentCompat;->onPrepareDialogBuilder(Landroidx/appcompat/app/f$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroidx/preference/ListPreferenceDialogFragmentCompat;


# direct methods
.method public constructor <init>(Landroidx/preference/ListPreferenceDialogFragmentCompat;)V
    .registers 2

    .line 1
    iput-object p1, p0, Landroidx/preference/ListPreferenceDialogFragmentCompat$a;->a:Landroidx/preference/ListPreferenceDialogFragmentCompat;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/preference/ListPreferenceDialogFragmentCompat$a;->a:Landroidx/preference/ListPreferenceDialogFragmentCompat;

    .line 3
    iput p2, v0, Landroidx/preference/ListPreferenceDialogFragmentCompat;->mClickedDialogEntryIndex:I

    .line 5
    const/4 p2, -0x1

    .line 6
    invoke-virtual {v0, p1, p2}, Landroidx/preference/PreferenceDialogFragmentCompat;->onClick(Landroid/content/DialogInterface;I)V

    .line 9
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 12
    return-void
.end method
