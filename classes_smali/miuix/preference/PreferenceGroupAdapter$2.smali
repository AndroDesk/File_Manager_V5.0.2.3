.class Lmiuix/preference/PreferenceGroupAdapter$2;
.super Ljava/lang/Object;
.source "PreferenceGroupAdapter.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


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


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lmiuix/preference/PreferenceGroupAdapter;)V
    .registers 2

    iput-object p1, p0, Lmiuix/preference/PreferenceGroupAdapter$2;->this$0:Lmiuix/preference/PreferenceGroupAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    if-eqz p2, :cond_d

    const/4 v0, 0x2

    if-eq p2, v0, :cond_d

    const/4 v0, 0x3

    if-eq p2, v0, :cond_d

    goto :goto_2c

    :cond_d
    iget-object p2, p0, Lmiuix/preference/PreferenceGroupAdapter$2;->this$0:Lmiuix/preference/PreferenceGroupAdapter;

    invoke-static {p2}, Lmiuix/preference/PreferenceGroupAdapter;->access$100(Lmiuix/preference/PreferenceGroupAdapter;)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_2c

    iget-object p2, p0, Lmiuix/preference/PreferenceGroupAdapter$2;->this$0:Lmiuix/preference/PreferenceGroupAdapter;

    invoke-static {p2}, Lmiuix/preference/PreferenceGroupAdapter;->access$200(Lmiuix/preference/PreferenceGroupAdapter;)Z

    move-result p2

    if-nez p2, :cond_2c

    iget-object p2, p0, Lmiuix/preference/PreferenceGroupAdapter$2;->this$0:Lmiuix/preference/PreferenceGroupAdapter;

    const/4 v0, 0x1

    invoke-static {p2, v0}, Lmiuix/preference/PreferenceGroupAdapter;->access$202(Lmiuix/preference/PreferenceGroupAdapter;Z)Z

    new-instance p2, Lmiuix/preference/PreferenceGroupAdapter$2$1;

    invoke-direct {p2, p0}, Lmiuix/preference/PreferenceGroupAdapter$2$1;-><init>(Lmiuix/preference/PreferenceGroupAdapter$2;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return v0

    :cond_2c
    :goto_2c
    const/4 p1, 0x0

    return p1
.end method
