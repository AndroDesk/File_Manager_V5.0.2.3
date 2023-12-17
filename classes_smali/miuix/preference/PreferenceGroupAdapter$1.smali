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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lmiuix/preference/PreferenceGroupAdapter;)V
    .registers 2

    iput-object p1, p0, Lmiuix/preference/PreferenceGroupAdapter$1;->this$0:Lmiuix/preference/PreferenceGroupAdapter;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$i;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .registers 3

    invoke-super {p0}, Landroidx/recyclerview/widget/RecyclerView$i;->onChanged()V

    iget-object v0, p0, Lmiuix/preference/PreferenceGroupAdapter$1;->this$0:Lmiuix/preference/PreferenceGroupAdapter;

    invoke-virtual {v0}, Landroidx/preference/c;->getItemCount()I

    move-result v1

    new-array v1, v1, [Lmiuix/preference/PreferenceGroupAdapter$PositionDescriptor;

    invoke-static {v0, v1}, Lmiuix/preference/PreferenceGroupAdapter;->access$002(Lmiuix/preference/PreferenceGroupAdapter;[Lmiuix/preference/PreferenceGroupAdapter$PositionDescriptor;)[Lmiuix/preference/PreferenceGroupAdapter$PositionDescriptor;

    return-void
.end method
