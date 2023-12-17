.class public Lcom/micloud/midrive/infos/FolderDetail;
.super Ljava/lang/Object;
.source "FolderDetail.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/micloud/midrive/infos/FolderDetail$Factory;
    }
.end annotation


# static fields
.field public static final JSON_LONG_CREATE_TIME:Ljava/lang/String; = "createTime"

.field public static final JSON_LONG_MODIFY_TIM:Ljava/lang/String; = "modifyTime"

.field public static final JSON_STR_ID:Ljava/lang/String; = "id"

.field public static final JSON_STR_NAME:Ljava/lang/String; = "name"

.field public static final JSON_STR_PARENT_ID:Ljava/lang/String; = "parentId"


# instance fields
.field public createTime:J

.field public id:Ljava/lang/String;

.field public modifyTime:J

.field public name:Ljava/lang/String;

.field public parentId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ)V
    .registers 8

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/micloud/midrive/infos/FolderDetail;->name:Ljava/lang/String;

    .line 6
    iput-object p2, p0, Lcom/micloud/midrive/infos/FolderDetail;->id:Ljava/lang/String;

    .line 8
    iput-object p3, p0, Lcom/micloud/midrive/infos/FolderDetail;->parentId:Ljava/lang/String;

    .line 10
    iput-wide p4, p0, Lcom/micloud/midrive/infos/FolderDetail;->modifyTime:J

    .line 12
    iput-wide p6, p0, Lcom/micloud/midrive/infos/FolderDetail;->createTime:J

    .line 14
    return-void
.end method
