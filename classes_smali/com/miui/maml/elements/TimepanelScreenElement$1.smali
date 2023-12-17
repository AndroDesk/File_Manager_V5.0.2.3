.class Lcom/miui/maml/elements/TimepanelScreenElement$1;
.super Ljava/lang/Object;
.source "TimepanelScreenElement.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/elements/TimepanelScreenElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/miui/maml/elements/TimepanelScreenElement;


# direct methods
.method public constructor <init>(Lcom/miui/maml/elements/TimepanelScreenElement;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/miui/maml/elements/TimepanelScreenElement$1;->this$0:Lcom/miui/maml/elements/TimepanelScreenElement;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/TimepanelScreenElement$1;->this$0:Lcom/miui/maml/elements/TimepanelScreenElement;

    .line 3
    invoke-static {v0}, Lcom/miui/maml/elements/TimepanelScreenElement;->access$000(Lcom/miui/maml/elements/TimepanelScreenElement;)Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_9

    .line 9
    return-void

    .line 10
    :cond_9
    iget-object v0, p0, Lcom/miui/maml/elements/TimepanelScreenElement$1;->this$0:Lcom/miui/maml/elements/TimepanelScreenElement;

    .line 12
    iget-object v0, v0, Lcom/miui/maml/elements/ImageScreenElement;->mBitmap:Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;

    .line 14
    invoke-virtual {v0}, Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;->getBitmap()Landroid/graphics/Bitmap;

    .line 17
    move-result-object v0

    .line 18
    if-nez v0, :cond_14

    .line 20
    return-void

    .line 21
    :cond_14
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 24
    move-result-wide v1

    .line 25
    iget-object v3, p0, Lcom/miui/maml/elements/TimepanelScreenElement$1;->this$0:Lcom/miui/maml/elements/TimepanelScreenElement;

    .line 27
    iget-object v3, v3, Lcom/miui/maml/elements/TimepanelScreenElement;->mCalendar:Ljava/util/Calendar;

    .line 29
    invoke-virtual {v3, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 32
    iget-object v1, p0, Lcom/miui/maml/elements/TimepanelScreenElement$1;->this$0:Lcom/miui/maml/elements/TimepanelScreenElement;

    .line 34
    invoke-static {v1}, Lcom/miui/maml/elements/TimepanelScreenElement;->access$100(Lcom/miui/maml/elements/TimepanelScreenElement;)Lcom/miui/maml/data/Expression;

    .line 37
    move-result-object v1

    .line 38
    if-eqz v1, :cond_42

    .line 40
    iget-object v1, p0, Lcom/miui/maml/elements/TimepanelScreenElement$1;->this$0:Lcom/miui/maml/elements/TimepanelScreenElement;

    .line 42
    invoke-static {v1}, Lcom/miui/maml/elements/TimepanelScreenElement;->access$100(Lcom/miui/maml/elements/TimepanelScreenElement;)Lcom/miui/maml/data/Expression;

    .line 45
    move-result-object v1

    .line 46
    invoke-virtual {v1}, Lcom/miui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    .line 49
    move-result-object v1

    .line 50
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 53
    move-result v2

    .line 54
    if-nez v2, :cond_42

    .line 56
    iget-object v2, p0, Lcom/miui/maml/elements/TimepanelScreenElement$1;->this$0:Lcom/miui/maml/elements/TimepanelScreenElement;

    .line 58
    iget-object v2, v2, Lcom/miui/maml/elements/TimepanelScreenElement;->mCalendar:Ljava/util/Calendar;

    .line 60
    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    .line 63
    move-result-object v1

    .line 64
    invoke-virtual {v2, v1}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 67
    :cond_42
    iget-object v1, p0, Lcom/miui/maml/elements/TimepanelScreenElement$1;->this$0:Lcom/miui/maml/elements/TimepanelScreenElement;

    .line 69
    invoke-static {v1}, Lcom/miui/maml/elements/TimepanelScreenElement;->access$200(Lcom/miui/maml/elements/TimepanelScreenElement;)Ljava/lang/String;

    .line 72
    move-result-object v1

    .line 73
    iget-object v2, p0, Lcom/miui/maml/elements/TimepanelScreenElement$1;->this$0:Lcom/miui/maml/elements/TimepanelScreenElement;

    .line 75
    iget-object v2, v2, Lcom/miui/maml/elements/TimepanelScreenElement;->mCalendar:Ljava/util/Calendar;

    .line 77
    invoke-static {v1, v2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    .line 80
    move-result-object v1

    .line 81
    iget-object v2, p0, Lcom/miui/maml/elements/TimepanelScreenElement$1;->this$0:Lcom/miui/maml/elements/TimepanelScreenElement;

    .line 83
    invoke-static {v2}, Lcom/miui/maml/elements/TimepanelScreenElement;->access$300(Lcom/miui/maml/elements/TimepanelScreenElement;)Z

    .line 86
    move-result v2

    .line 87
    if-nez v2, :cond_65

    .line 89
    iget-object v2, p0, Lcom/miui/maml/elements/TimepanelScreenElement$1;->this$0:Lcom/miui/maml/elements/TimepanelScreenElement;

    .line 91
    invoke-static {v2}, Lcom/miui/maml/elements/TimepanelScreenElement;->access$400(Lcom/miui/maml/elements/TimepanelScreenElement;)Ljava/lang/CharSequence;

    .line 94
    move-result-object v2

    .line 95
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 98
    move-result v2

    .line 99
    if-eqz v2, :cond_65

    .line 101
    return-void

    .line 102
    :cond_65
    iget-object v2, p0, Lcom/miui/maml/elements/TimepanelScreenElement$1;->this$0:Lcom/miui/maml/elements/TimepanelScreenElement;

    .line 104
    invoke-static {v2, v1}, Lcom/miui/maml/elements/TimepanelScreenElement;->access$402(Lcom/miui/maml/elements/TimepanelScreenElement;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 107
    new-instance v2, Landroid/graphics/Canvas;

    .line 109
    invoke-direct {v2, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 112
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    .line 114
    const/4 v3, 0x0

    .line 115
    invoke-virtual {v2, v3, v0}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 118
    move v0, v3

    .line 119
    :goto_76
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 122
    move-result v4

    .line 123
    if-ge v3, v4, :cond_9d

    .line 125
    invoke-interface {v1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    .line 128
    move-result v4

    .line 129
    iget-object v5, p0, Lcom/miui/maml/elements/TimepanelScreenElement$1;->this$0:Lcom/miui/maml/elements/TimepanelScreenElement;

    .line 131
    invoke-static {v5, v4}, Lcom/miui/maml/elements/TimepanelScreenElement;->access$500(Lcom/miui/maml/elements/TimepanelScreenElement;C)Landroid/graphics/Bitmap;

    .line 134
    move-result-object v4

    .line 135
    if-eqz v4, :cond_9a

    .line 137
    int-to-float v5, v0

    .line 138
    const/4 v6, 0x0

    .line 139
    const/4 v7, 0x0

    .line 140
    invoke-virtual {v2, v4, v5, v6, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 143
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    .line 146
    move-result v4

    .line 147
    add-int/2addr v4, v0

    .line 148
    iget-object v0, p0, Lcom/miui/maml/elements/TimepanelScreenElement$1;->this$0:Lcom/miui/maml/elements/TimepanelScreenElement;

    .line 150
    invoke-static {v0}, Lcom/miui/maml/elements/TimepanelScreenElement;->access$600(Lcom/miui/maml/elements/TimepanelScreenElement;)I

    .line 153
    move-result v0

    .line 154
    add-int/2addr v0, v4

    .line 155
    :cond_9a
    add-int/lit8 v3, v3, 0x1

    .line 157
    goto :goto_76

    .line 158
    :cond_9d
    iget-object v1, p0, Lcom/miui/maml/elements/TimepanelScreenElement$1;->this$0:Lcom/miui/maml/elements/TimepanelScreenElement;

    .line 160
    iget-object v1, v1, Lcom/miui/maml/elements/ImageScreenElement;->mBitmap:Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;

    .line 162
    invoke-virtual {v1}, Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;->updateVersion()I

    .line 165
    iget-object v1, p0, Lcom/miui/maml/elements/TimepanelScreenElement$1;->this$0:Lcom/miui/maml/elements/TimepanelScreenElement;

    .line 167
    invoke-static {v1}, Lcom/miui/maml/elements/TimepanelScreenElement;->access$600(Lcom/miui/maml/elements/TimepanelScreenElement;)I

    .line 170
    move-result v2

    .line 171
    sub-int/2addr v0, v2

    .line 172
    invoke-static {v1, v0}, Lcom/miui/maml/elements/TimepanelScreenElement;->access$702(Lcom/miui/maml/elements/TimepanelScreenElement;I)I

    .line 175
    iget-object v0, p0, Lcom/miui/maml/elements/TimepanelScreenElement$1;->this$0:Lcom/miui/maml/elements/TimepanelScreenElement;

    .line 177
    invoke-static {v0}, Lcom/miui/maml/elements/TimepanelScreenElement;->access$700(Lcom/miui/maml/elements/TimepanelScreenElement;)I

    .line 180
    move-result v1

    .line 181
    int-to-double v1, v1

    .line 182
    invoke-virtual {v0, v1, v2}, Lcom/miui/maml/elements/ScreenElement;->descale(D)D

    .line 185
    move-result-wide v1

    .line 186
    invoke-virtual {v0, v1, v2}, Lcom/miui/maml/elements/ScreenElement;->setActualWidth(D)V

    .line 189
    iget-object v0, p0, Lcom/miui/maml/elements/TimepanelScreenElement$1;->this$0:Lcom/miui/maml/elements/TimepanelScreenElement;

    .line 191
    invoke-virtual {v0}, Lcom/miui/maml/elements/ScreenElement;->requestUpdate()V

    .line 194
    return-void
.end method
