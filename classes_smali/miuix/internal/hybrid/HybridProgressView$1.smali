.class Lmiuix/internal/hybrid/HybridProgressView$1;
.super Landroid/os/Handler;
.source "HybridProgressView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/internal/hybrid/HybridProgressView;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lmiuix/internal/hybrid/HybridProgressView;


# direct methods
.method public constructor <init>(Lmiuix/internal/hybrid/HybridProgressView;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/internal/hybrid/HybridProgressView$1;->this$0:Lmiuix/internal/hybrid/HybridProgressView;

    .line 3
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 8

    .line 1
    iget p1, p1, Landroid/os/Message;->what:I

    .line 3
    const/16 v0, 0x2a

    .line 5
    if-ne p1, v0, :cond_a2

    .line 7
    iget-object p1, p0, Lmiuix/internal/hybrid/HybridProgressView$1;->this$0:Lmiuix/internal/hybrid/HybridProgressView;

    .line 9
    invoke-static {p1}, Lmiuix/internal/hybrid/HybridProgressView;->access$000(Lmiuix/internal/hybrid/HybridProgressView;)I

    .line 12
    move-result p1

    .line 13
    iget-object v1, p0, Lmiuix/internal/hybrid/HybridProgressView$1;->this$0:Lmiuix/internal/hybrid/HybridProgressView;

    .line 15
    invoke-static {v1}, Lmiuix/internal/hybrid/HybridProgressView;->access$100(Lmiuix/internal/hybrid/HybridProgressView;)I

    .line 18
    move-result v1

    .line 19
    const-wide/16 v2, 0x28

    .line 21
    if-ge p1, v1, :cond_5a

    .line 23
    iget-object p1, p0, Lmiuix/internal/hybrid/HybridProgressView$1;->this$0:Lmiuix/internal/hybrid/HybridProgressView;

    .line 25
    invoke-static {p1}, Lmiuix/internal/hybrid/HybridProgressView;->access$100(Lmiuix/internal/hybrid/HybridProgressView;)I

    .line 28
    move-result v1

    .line 29
    iget-object v4, p0, Lmiuix/internal/hybrid/HybridProgressView$1;->this$0:Lmiuix/internal/hybrid/HybridProgressView;

    .line 31
    invoke-static {v4}, Lmiuix/internal/hybrid/HybridProgressView;->access$000(Lmiuix/internal/hybrid/HybridProgressView;)I

    .line 34
    move-result v4

    .line 35
    iget-object v5, p0, Lmiuix/internal/hybrid/HybridProgressView$1;->this$0:Lmiuix/internal/hybrid/HybridProgressView;

    .line 37
    invoke-static {v5}, Lmiuix/internal/hybrid/HybridProgressView;->access$200(Lmiuix/internal/hybrid/HybridProgressView;)I

    .line 40
    move-result v5

    .line 41
    add-int/2addr v5, v4

    .line 42
    invoke-static {v1, v5}, Ljava/lang/Math;->min(II)I

    .line 45
    move-result v1

    .line 46
    invoke-static {p1, v1}, Lmiuix/internal/hybrid/HybridProgressView;->access$002(Lmiuix/internal/hybrid/HybridProgressView;I)I

    .line 49
    iget-object p1, p0, Lmiuix/internal/hybrid/HybridProgressView$1;->this$0:Lmiuix/internal/hybrid/HybridProgressView;

    .line 51
    invoke-static {p1}, Lmiuix/internal/hybrid/HybridProgressView;->access$300(Lmiuix/internal/hybrid/HybridProgressView;)Landroid/graphics/Rect;

    .line 54
    move-result-object p1

    .line 55
    iget-object v1, p0, Lmiuix/internal/hybrid/HybridProgressView$1;->this$0:Lmiuix/internal/hybrid/HybridProgressView;

    .line 57
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    .line 60
    move-result v1

    .line 61
    iget-object v4, p0, Lmiuix/internal/hybrid/HybridProgressView$1;->this$0:Lmiuix/internal/hybrid/HybridProgressView;

    .line 63
    invoke-static {v4}, Lmiuix/internal/hybrid/HybridProgressView;->access$000(Lmiuix/internal/hybrid/HybridProgressView;)I

    .line 66
    move-result v4

    .line 67
    mul-int/2addr v4, v1

    .line 68
    div-int/lit16 v4, v4, 0x2710

    .line 70
    iput v4, p1, Landroid/graphics/Rect;->right:I

    .line 72
    iget-object p1, p0, Lmiuix/internal/hybrid/HybridProgressView$1;->this$0:Lmiuix/internal/hybrid/HybridProgressView;

    .line 74
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 77
    iget-object p1, p0, Lmiuix/internal/hybrid/HybridProgressView$1;->this$0:Lmiuix/internal/hybrid/HybridProgressView;

    .line 79
    invoke-static {p1}, Lmiuix/internal/hybrid/HybridProgressView;->access$400(Lmiuix/internal/hybrid/HybridProgressView;)Landroid/os/Handler;

    .line 82
    move-result-object p1

    .line 83
    invoke-virtual {p1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 86
    move-result-object p1

    .line 87
    invoke-virtual {p0, p1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 90
    goto :goto_a2

    .line 91
    :cond_5a
    iget-object p1, p0, Lmiuix/internal/hybrid/HybridProgressView$1;->this$0:Lmiuix/internal/hybrid/HybridProgressView;

    .line 93
    invoke-static {p1}, Lmiuix/internal/hybrid/HybridProgressView;->access$000(Lmiuix/internal/hybrid/HybridProgressView;)I

    .line 96
    move-result p1

    .line 97
    const/16 v1, 0x251c

    .line 99
    if-gt p1, v1, :cond_a2

    .line 101
    iget-object p1, p0, Lmiuix/internal/hybrid/HybridProgressView$1;->this$0:Lmiuix/internal/hybrid/HybridProgressView;

    .line 103
    invoke-static {p1}, Lmiuix/internal/hybrid/HybridProgressView;->access$000(Lmiuix/internal/hybrid/HybridProgressView;)I

    .line 106
    move-result p1

    .line 107
    const/16 v1, 0x320

    .line 109
    if-lt p1, v1, :cond_a2

    .line 111
    iget-object p1, p0, Lmiuix/internal/hybrid/HybridProgressView$1;->this$0:Lmiuix/internal/hybrid/HybridProgressView;

    .line 113
    invoke-static {p1}, Lmiuix/internal/hybrid/HybridProgressView;->access$000(Lmiuix/internal/hybrid/HybridProgressView;)I

    .line 116
    move-result v1

    .line 117
    add-int/lit8 v1, v1, 0x1e

    .line 119
    invoke-static {p1, v1}, Lmiuix/internal/hybrid/HybridProgressView;->access$002(Lmiuix/internal/hybrid/HybridProgressView;I)I

    .line 122
    iget-object p1, p0, Lmiuix/internal/hybrid/HybridProgressView$1;->this$0:Lmiuix/internal/hybrid/HybridProgressView;

    .line 124
    invoke-static {p1}, Lmiuix/internal/hybrid/HybridProgressView;->access$300(Lmiuix/internal/hybrid/HybridProgressView;)Landroid/graphics/Rect;

    .line 127
    move-result-object p1

    .line 128
    iget-object v1, p0, Lmiuix/internal/hybrid/HybridProgressView$1;->this$0:Lmiuix/internal/hybrid/HybridProgressView;

    .line 130
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    .line 133
    move-result v1

    .line 134
    iget-object v4, p0, Lmiuix/internal/hybrid/HybridProgressView$1;->this$0:Lmiuix/internal/hybrid/HybridProgressView;

    .line 136
    invoke-static {v4}, Lmiuix/internal/hybrid/HybridProgressView;->access$000(Lmiuix/internal/hybrid/HybridProgressView;)I

    .line 139
    move-result v4

    .line 140
    mul-int/2addr v4, v1

    .line 141
    div-int/lit16 v4, v4, 0x2710

    .line 143
    iput v4, p1, Landroid/graphics/Rect;->right:I

    .line 145
    iget-object p1, p0, Lmiuix/internal/hybrid/HybridProgressView$1;->this$0:Lmiuix/internal/hybrid/HybridProgressView;

    .line 147
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 150
    iget-object p1, p0, Lmiuix/internal/hybrid/HybridProgressView$1;->this$0:Lmiuix/internal/hybrid/HybridProgressView;

    .line 152
    invoke-static {p1}, Lmiuix/internal/hybrid/HybridProgressView;->access$400(Lmiuix/internal/hybrid/HybridProgressView;)Landroid/os/Handler;

    .line 155
    move-result-object p1

    .line 156
    invoke-virtual {p1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 159
    move-result-object p1

    .line 160
    invoke-virtual {p0, p1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 163
    :cond_a2
    :goto_a2
    return-void
.end method
