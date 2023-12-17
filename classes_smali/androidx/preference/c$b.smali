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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Landroidx/preference/c;Landroidx/preference/PreferenceGroup;)V
    .registers 3

    iput-object p1, p0, Landroidx/preference/c$b;->b:Landroidx/preference/c;

    iput-object p2, p0, Landroidx/preference/c$b;->a:Landroidx/preference/PreferenceGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPreferenceClick(Landroidx/preference/Preference;)Z
    .registers 4

    iget-object v0, p0, Landroidx/preference/c$b;->a:Landroidx/preference/PreferenceGroup;

    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->setInitialExpandedChildrenCount(I)V

    iget-object v0, p0, Landroidx/preference/c$b;->b:Landroidx/preference/c;

    invoke-virtual {v0, p1}, Landroidx/preference/c;->onPreferenceHierarchyChange(Landroidx/preference/Preference;)V

    iget-object p1, p0, Landroidx/preference/c$b;->a:Landroidx/preference/PreferenceGroup;

    invoke-virtual {p1}, Landroidx/preference/PreferenceGroup;->getOnExpandButtonClickListener()Landroidx/preference/PreferenceGroup$b;

    move-result-object p1

    if-eqz p1, :cond_18

    invoke-interface {p1}, Landroidx/preference/PreferenceGroup$b;->a()V

    :cond_18
    const/4 p1, 0x1

    return p1
.end method
