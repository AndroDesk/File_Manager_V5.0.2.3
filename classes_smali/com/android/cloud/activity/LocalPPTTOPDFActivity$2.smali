.class Lcom/android/cloud/activity/LocalPPTTOPDFActivity$2;
.super Ljava/lang/Object;
.source "LocalPPTTOPDFActivity.java"

# interfaces
.implements Lcom/android/cloud/task/QueryLiteTokenTask$QueryLiteTokenListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/cloud/activity/LocalPPTTOPDFActivity;->startQueryTokenTask()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/cloud/activity/LocalPPTTOPDFActivity;


# direct methods
.method public constructor <init>(Lcom/android/cloud/activity/LocalPPTTOPDFActivity;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/cloud/activity/LocalPPTTOPDFActivity$2;->this$0:Lcom/android/cloud/activity/LocalPPTTOPDFActivity;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onQueryLiteTokenFinished()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/cloud/activity/LocalPPTTOPDFActivity$2;->this$0:Lcom/android/cloud/activity/LocalPPTTOPDFActivity;

    .line 3
    invoke-static {v0}, Lcom/android/cloud/activity/LocalPPTTOPDFActivity;->access$400(Lcom/android/cloud/activity/LocalPPTTOPDFActivity;)Lcom/android/cloud/task/QueryLiteTokenTask;

    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1}, Lcom/android/cloud/task/QueryLiteTokenTask;->getResultIfSuccessOrNull()Ljava/util/Map;

    .line 10
    move-result-object v1

    .line 11
    invoke-static {v0, v1}, Lcom/android/cloud/activity/LocalPPTTOPDFActivity;->access$302(Lcom/android/cloud/activity/LocalPPTTOPDFActivity;Ljava/util/Map;)Ljava/util/Map;

    .line 14
    iget-object v0, p0, Lcom/android/cloud/activity/LocalPPTTOPDFActivity$2;->this$0:Lcom/android/cloud/activity/LocalPPTTOPDFActivity;

    .line 16
    invoke-static {v0}, Lcom/android/cloud/activity/LocalPPTTOPDFActivity;->access$500(Lcom/android/cloud/activity/LocalPPTTOPDFActivity;)V

    .line 19
    return-void
.end method
