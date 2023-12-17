.class Lmiuix/preference/PreferenceGroupAdapter$4;
.super Landroidx/recyclerview/widget/RecyclerView$s;
.source "PreferenceGroupAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/preference/PreferenceGroupAdapter;->requestHighlight(Landroidx/recyclerview/widget/RecyclerView;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lmiuix/preference/PreferenceGroupAdapter;

.field public final synthetic val$position:I


# direct methods
.method public constructor <init>(Lmiuix/preference/PreferenceGroupAdapter;I)V
    .registers 3

    .line 1
    iput-object p1, p0, Lmiuix/preference/PreferenceGroupAdapter$4;->this$0:Lmiuix/preference/PreferenceGroupAdapter;

    .line 3
    iput p2, p0, Lmiuix/preference/PreferenceGroupAdapter$4;->val$position:I

    .line 5
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$s;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .registers 4

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$s;->onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V

    .line 4
    if-nez p2, :cond_18

    .line 6
    iget-object p2, p0, Lmiuix/preference/PreferenceGroupAdapter$4;->this$0:Lmiuix/preference/PreferenceGroupAdapter;

    .line 8
    iget v0, p0, Lmiuix/preference/PreferenceGroupAdapter$4;->val$position:I

    .line 10
    invoke-static {p2, v0}, Lmiuix/preference/PreferenceGroupAdapter;->access$302(Lmiuix/preference/PreferenceGroupAdapter;I)I

    .line 13
    iget-object p2, p0, Lmiuix/preference/PreferenceGroupAdapter$4;->this$0:Lmiuix/preference/PreferenceGroupAdapter;

    .line 15
    invoke-static {p2}, Lmiuix/preference/PreferenceGroupAdapter;->access$300(Lmiuix/preference/PreferenceGroupAdapter;)I

    .line 18
    move-result v0

    .line 19
    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 22
    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/RecyclerView;->removeOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$s;)V

    .line 25
    :cond_18
    return-void
.end method
