.class public Lcom/micloud/midrive/constants/OneTrackConstants$Event;
.super Ljava/lang/Object;
.source "OneTrackConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/micloud/midrive/constants/OneTrackConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Event"
.end annotation


# static fields
.field public static final FILE_OPERATION_RESULT:Ljava/lang/String; = "file_operation_result"

.field public static final SYNC_SESSION_RESULT:Ljava/lang/String; = "sync_session_result"

.field public static final SYNC_TASK_EXCEPTION_COLLECTION:Ljava/lang/String; = "sync_task_exception_collection"

.field public static final TRANSFER_SESSION_RESULT:Ljava/lang/String; = "transfer_session_result"

.field public static final TRANSFER_TASK_RESULT:Ljava/lang/String; = "transfer_task_result"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
