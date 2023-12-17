.class Lmiuix/preference/PreferenceFragment$2;
.super Ljava/lang/Object;
.source "PreferenceFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/preference/PreferenceFragment;->requestHighlight(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lmiuix/preference/PreferenceFragment;

.field public final synthetic val$key:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lmiuix/preference/PreferenceFragment;Ljava/lang/String;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lmiuix/preference/PreferenceFragment$2;->this$0:Lmiuix/preference/PreferenceFragment;

    .line 3
    iput-object p2, p0, Lmiuix/preference/PreferenceFragment$2;->val$key:Ljava/lang/String;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/preference/PreferenceFragment$2;->this$0:Lmiuix/preference/PreferenceFragment;

    .line 3
    invoke-static {v0}, Lmiuix/preference/PreferenceFragment;->access$600(Lmiuix/preference/PreferenceFragment;)Lmiuix/preference/PreferenceGroupAdapter;

    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_19

    .line 9
    iget-object v0, p0, Lmiuix/preference/PreferenceFragment$2;->this$0:Lmiuix/preference/PreferenceFragment;

    .line 11
    invoke-static {v0}, Lmiuix/preference/PreferenceFragment;->access$600(Lmiuix/preference/PreferenceFragment;)Lmiuix/preference/PreferenceGroupAdapter;

    .line 14
    move-result-object v0

    .line 15
    iget-object v1, p0, Lmiuix/preference/PreferenceFragment$2;->this$0:Lmiuix/preference/PreferenceFragment;

    .line 17
    invoke-virtual {v1}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    .line 20
    move-result-object v1

    .line 21
    iget-object v2, p0, Lmiuix/preference/PreferenceFragment$2;->val$key:Ljava/lang/String;

    .line 23
    invoke-virtual {v0, v1, v2}, Lmiuix/preference/PreferenceGroupAdapter;->requestHighlight(Landroidx/recyclerview/widget/RecyclerView;Ljava/lang/String;)V

    .line 26
    :cond_19
    return-void
.end method
