.class public final Landroidx/preference/c$b;
.super Ljava/lang/Object;
.source "PreferenceGroupAdapter.java"

# interfaces
.implements Landroidx/preference/Preference$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/preference/c;->createExpandButton(Landroidx/preference/PreferenceGroup;Ljava/util/List;)Landroidx/preference/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroidx/preference/PreferenceGroup;

.field public final synthetic b:Landroidx/preference/c;


# direct methods
.method public constructor <init>(Landroidx/preference/c;Landroidx/preference/PreferenceGroup;)V
    .registers 3

    .line 1
    iput-object p1, p0, Landroidx/preference/c$b;->b:Landroidx/preference/c;

    .line 3
    iput-object p2, p0, Landroidx/preference/c$b;->a:Landroidx/preference/PreferenceGroup;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public final onPreferenceClick(Landroidx/preference/Preference;)Z
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/preference/c$b;->a:Landroidx/preference/PreferenceGroup;

    .line 3
    const v1, 0x7fffffff

    .line 6
    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->setInitialExpandedChildrenCount(I)V

    .line 9
    iget-object v0, p0, Landroidx/preference/c$b;->b:Landroidx/preference/c;

    .line 11
    invoke-virtual {v0, p1}, Landroidx/preference/c;->onPreferenceHierarchyChange(Landroidx/preference/Preference;)V

    .line 14
    iget-object p1, p0, Landroidx/preference/c$b;->a:Landroidx/preference/PreferenceGroup;

    .line 16
    invoke-virtual {p1}, Landroidx/preference/PreferenceGroup;->getOnExpandButtonClickListener()Landroidx/preference/PreferenceGroup$b;

    .line 19
    move-result-object p1

    .line 20
    if-eqz p1, :cond_18

    .line 22
    invoke-interface {p1}, Landroidx/preference/PreferenceGroup$b;->a()V

    .line 25
    :cond_18
    const/4 p1, 0x1

    .line 26
    return p1
.end method
