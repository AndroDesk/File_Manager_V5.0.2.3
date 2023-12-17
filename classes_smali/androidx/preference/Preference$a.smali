.class public final Landroidx/preference/Preference$a;
.super Ljava/lang/Object;
.source "Preference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/preference/Preference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroidx/preference/Preference;


# direct methods
.method public constructor <init>(Landroidx/preference/Preference;)V
    .registers 2

    .line 1
    iput-object p1, p0, Landroidx/preference/Preference$a;->a:Landroidx/preference/Preference;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/preference/Preference$a;->a:Landroidx/preference/Preference;

    .line 3
    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->performClick(Landroid/view/View;)V

    .line 6
    return-void
.end method
