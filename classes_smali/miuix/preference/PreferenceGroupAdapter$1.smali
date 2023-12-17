.class Lmiuix/preference/PreferenceGroupAdapter$1;
.super Landroidx/recyclerview/widget/RecyclerView$i;
.source "PreferenceGroupAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/preference/PreferenceGroupAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lmiuix/preference/PreferenceGroupAdapter;


# direct methods
.method public constructor <init>(Lmiuix/preference/PreferenceGroupAdapter;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/preference/PreferenceGroupAdapter$1;->this$0:Lmiuix/preference/PreferenceGroupAdapter;

    .line 3
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$i;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onChanged()V
    .registers 3

    .line 1
    invoke-super {p0}, Landroidx/recyclerview/widget/RecyclerView$i;->onChanged()V

    .line 4
    iget-object v0, p0, Lmiuix/preference/PreferenceGroupAdapter$1;->this$0:Lmiuix/preference/PreferenceGroupAdapter;

    .line 6
    invoke-virtual {v0}, Landroidx/preference/c;->getItemCount()I

    .line 9
    move-result v1

    .line 10
    new-array v1, v1, [Lmiuix/preference/PreferenceGroupAdapter$PositionDescriptor;

    .line 12
    invoke-static {v0, v1}, Lmiuix/preference/PreferenceGroupAdapter;->access$002(Lmiuix/preference/PreferenceGroupAdapter;[Lmiuix/preference/PreferenceGroupAdapter$PositionDescriptor;)[Lmiuix/preference/PreferenceGroupAdapter$PositionDescriptor;

    .line 15
    return-void
.end method
