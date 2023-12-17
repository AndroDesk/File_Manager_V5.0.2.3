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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lmiuix/preference/PreferenceGroupAdapter;I)V
    .registers 3

    iput-object p1, p0, Lmiuix/preference/PreferenceGroupAdapter$4;->this$0:Lmiuix/preference/PreferenceGroupAdapter;

    iput p2, p0, Lmiuix/preference/PreferenceGroupAdapter$4;->val$position:I

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$s;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .registers 4

    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$s;->onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V

    if-nez p2, :cond_18

    iget-object p2, p0, Lmiuix/preference/PreferenceGroupAdapter$4;->this$0:Lmiuix/preference/PreferenceGroupAdapter;

    iget v0, p0, Lmiuix/preference/PreferenceGroupAdapter$4;->val$position:I

    invoke-static {p2, v0}, Lmiuix/preference/PreferenceGroupAdapter;->access$302(Lmiuix/preference/PreferenceGroupAdapter;I)I

    iget-object p2, p0, Lmiuix/preference/PreferenceGroupAdapter$4;->this$0:Lmiuix/preference/PreferenceGroupAdapter;

    invoke-static {p2}, Lmiuix/preference/PreferenceGroupAdapter;->access$300(Lmiuix/preference/PreferenceGroupAdapter;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/RecyclerView;->removeOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$s;)V

    :cond_18
    return-void
.end method
