.class Lmiuix/preference/PreferenceGroupAdapter$2$1;
.super Ljava/lang/Object;
.source "PreferenceGroupAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/preference/PreferenceGroupAdapter$2;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lmiuix/preference/PreferenceGroupAdapter$2;


# direct methods
.method public constructor <init>(Lmiuix/preference/PreferenceGroupAdapter$2;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/preference/PreferenceGroupAdapter$2$1;->this$1:Lmiuix/preference/PreferenceGroupAdapter$2;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/preference/PreferenceGroupAdapter$2$1;->this$1:Lmiuix/preference/PreferenceGroupAdapter$2;

    .line 3
    iget-object v0, v0, Lmiuix/preference/PreferenceGroupAdapter$2;->this$0:Lmiuix/preference/PreferenceGroupAdapter;

    .line 5
    invoke-virtual {v0}, Lmiuix/preference/PreferenceGroupAdapter;->stopHighlight()V

    .line 8
    return-void
.end method
